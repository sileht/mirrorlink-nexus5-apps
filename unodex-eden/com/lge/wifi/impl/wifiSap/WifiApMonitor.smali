.class public abstract Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;
.super Ljava/lang/Object;
.source "WifiApMonitor.java"

# interfaces
.implements Lcom/lge/wifi/impl/wifiSap/WifiSapTypes;


# instance fields
.field private final mWifiSapHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "sapHandler"    # Landroid/os/Handler;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method


# virtual methods
.method protected notifyConnectedToHostapd()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    return-void
.end method

.method protected notifyDriverHungToHostapd()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method

.method protected notifyMaxClientReached()V
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    return-void
.end method

.method protected notifySoftApDisabled()V
    .registers 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    return-void
.end method

.method protected notifySoftApEnabled()V
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    return-void
.end method

.method protected notifyStationAssociated()V
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    return-void
.end method

.method protected notifyStationDisassociated()V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    return-void
.end method

.method protected notifyWPStoToHostapd(I)V
    .registers 4
    .param p1, "wpsEvent"    # I

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_4a

    .line 65
    :goto_3
    return-void

    .line 45
    :pswitch_4
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 48
    :pswitch_f
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 51
    :pswitch_1a
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 54
    :pswitch_26
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 57
    :pswitch_32
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 60
    :pswitch_3e
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;->mWifiSapHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 43
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
        :pswitch_1a
        :pswitch_26
        :pswitch_32
        :pswitch_3e
    .end packed-switch
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract stopMonitoring()V
.end method
