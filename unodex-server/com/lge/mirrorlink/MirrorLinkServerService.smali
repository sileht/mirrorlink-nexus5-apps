.class public Lcom/lge/mirrorlink/MirrorLinkServerService;
.super Landroid/app/Service;
.source "MirrorLinkServerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/MirrorLinkServerService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink"


# instance fields
.field private mAppListMngr:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

.field private final mlsServiceBinder:Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/MirrorLinkServerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getDeviceFriendlyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/MirrorLinkServerService;Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->setDeviceFriendlyName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkServerService;->mAppListMngr:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 137
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkServerService$1;-><init>(Lcom/lge/mirrorlink/MirrorLinkServerService;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkServerService;->mlsServiceBinder:Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;

    .line 48
    return-void
.end method

.method private getDeviceFriendlyName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string/jumbo v2, "mirrorlink"

    invoke-virtual {p0, v2, v3}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 115
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "key_device_name"

    const v3, 0x7f09001a

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    .line 117
    :cond_22
    const-string/jumbo v0, "LG MirrorLink Server"

    .line 119
    :cond_25
    return-object v0
.end method

.method private setDeviceFriendlyName(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v2, "mirrorlink"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_device_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string/jumbo v0, "MirrorLink"

    const-string/jumbo v1, "[MirrorLinkServerService.onBind]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkServerService;->mlsServiceBinder:Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 62
    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "[MirrorLinkServerService.onCreate]"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "mirrorLinkPreference":Lcom/lge/mirrorlink/MirrorLinkPreference;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getSwitchPref()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 67
    new-instance v1, Lcom/lge/mirrorlink/RestoreStateManager;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/mirrorlink/RestoreStateManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lge/mirrorlink/RestoreStateManager;->loadState()V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setSwitchPref(Z)V

    .line 71
    :cond_2b
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/certificate/CertificateManager;

    .line 73
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService;->mAppListMngr:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 74
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkHandler;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/MirrorLinkHandler;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 80
    const-string/jumbo v0, "MirrorLink"

    const-string/jumbo v1, "[MirrorLinkServerService.onDestroy]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 88
    const-string/jumbo v0, "MirrorLink"

    const-string/jumbo v1, "[MirrorLinkServerService.onStartCommand]"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
