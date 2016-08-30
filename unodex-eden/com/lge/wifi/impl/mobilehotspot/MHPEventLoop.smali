.class public Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
.super Ljava/lang/Object;
.source "MHPEventLoop.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "MHPEventLoop"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->TAG:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 28
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 33
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public onAddAllowedDevice()V
    .registers 4

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.DONE_ADD_ALLOWED_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 40
    return-void
.end method

.method public onConnectedRequest(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v1, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addConnectedDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.CONNECTION_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 47
    return-void
.end method

.method public onDHCPStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 59
    const-string v1, "MHPEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] onDHCPStateChanged >> (state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.dhcp.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.dhcp.extra.DHCP_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    return-void
.end method

.method public onDhcpDisabled()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public onDhcpEnabled()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onDisabled()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public onHostapdConnected()V
    .registers 4

    .prologue
    .line 75
    const-string v1, "MHPEventLoop"

    const-string v2, "[MHP_GOOKY] onHostapdConnected"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.HOSTAPD_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 78
    return-void
.end method

.method public onMobileHotspotStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 51
    const-string v1, "MHPEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] onMobileHotspotStateChanged >> (state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 55
    return-void
.end method

.method public onStationStatusChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 67
    const-string v1, "MHPEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] onStationStatusChanged >> (state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.STATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.dhcp.extra.STATION_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    return-void
.end method
