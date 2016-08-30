.class Lcom/lge/wfds/WfdsLgP2pIface$1;
.super Ljava/lang/Object;
.source "WfdsLgP2pIface.java"

# interfaces
.implements Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsLgP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .registers 3

    .prologue
    .line 32
    const-string v0, "WfdsLgP2pIface"

    const-string v1, "LGP2pEventListener - onChannelDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wfds/WfdsLgP2pIface;->access$0(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)V

    .line 34
    return-void
.end method

.method public onConnectStatus(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pConnectStatus;Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V
    .registers 4
    .param p1, "peerMac"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    .param p3, "connectionInfo"    # Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    .prologue
    .line 50
    return-void
.end method

.method public onDiscoverResult(Lcom/lge/wifi/p2p/LGP2pDevice;Z)V
    .registers 3
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;
    .param p2, "isLosted"    # Z

    .prologue
    .line 47
    return-void
.end method

.method public onServiceRequested(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "serName"    # Ljava/lang/String;
    .param p2, "peerMac"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public onSystemServiceRestarted()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v0, "WfdsLgP2pIface"

    const-string v1, "LGP2pEventListener - onSystemServiceRestarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v2}, Lcom/lge/wfds/WfdsLgP2pIface;->access$1(Lcom/lge/wifi/p2p/LGP2pManager;)V

    .line 39
    invoke-static {v2}, Lcom/lge/wfds/WfdsLgP2pIface;->access$0(Lcom/lge/wifi/p2p/LGP2pManager$LGP2pChannel;)V

    .line 40
    invoke-static {v2}, Lcom/lge/wfds/WfdsLgP2pIface;->access$2(Lcom/lge/wfds/WfdsLgP2pIface;)V

    .line 41
    return-void
.end method
