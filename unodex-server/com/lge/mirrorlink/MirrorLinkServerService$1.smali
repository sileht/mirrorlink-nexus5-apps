.class Lcom/lge/mirrorlink/MirrorLinkServerService$1;
.super Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;
.source "MirrorLinkServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkServerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkServerService;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-direct {p0}, Lcom/lge/mirrorlink/IMirrorLinkServerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAppCertRevocation(Ljava/lang/String;)V
    .registers 4
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 173
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_f

    .line 174
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->checkAppCertRevocation(Ljava/lang/String;)V

    .line 171
    :cond_f
    return-void
.end method

.method public checkAppDevCertRevocation(Ljava/lang/String;)V
    .registers 4
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 181
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_f

    .line 182
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->checkAppDevCertRevocation(Ljava/lang/String;)V

    .line 179
    :cond_f
    return-void
.end method

.method public getBaseCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 189
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_11

    .line 190
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getBaseCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_11
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkServerService;->-wrap0(Lcom/lge/mirrorlink/MirrorLinkServerService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 199
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_11

    .line 200
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getDriveCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 202
    :cond_11
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public setDeveloperID(Ljava/lang/String;)V
    .registers 5
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "MirrorLinkServerService.setDeveloperID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lcom/lge/mirrorlink/DeveloperIdWatcher;

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/DeveloperIdWatcher;-><init>(Landroid/content/ContentResolver;)V

    .line 167
    .local v0, "devIdWatcher":Lcom/lge/mirrorlink/DeveloperIdWatcher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/DeveloperIdWatcher;->refresh(Z)Z

    .line 164
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "MirrorLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MirrorLink Service is called. setDeviceName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-static {v0, p1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->-wrap1(Lcom/lge/mirrorlink/MirrorLinkServerService;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public ssdpAlive()Z
    .registers 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkServerService$1;->this$0:Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    .line 154
    .local v0, "upnpService":Lcom/lge/mirrorlink/upnp/UpnpService;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 155
    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "MirrorLink Service is called. call announce Alive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->announceAlive()Z

    .line 160
    :goto_1e
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_20
    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "MirrorLink Service is called. upnpService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
