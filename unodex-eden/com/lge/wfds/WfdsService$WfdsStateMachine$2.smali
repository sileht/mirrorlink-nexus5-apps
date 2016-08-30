.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;
.super Ljava/lang/Object;
.source "WfdsService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;->checkDeviceIfP2pServiceKnow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    .line 2669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 5
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 2672
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    if-nez v1, :cond_14

    .line 2673
    const-string v1, "WfdsService"

    const-string v2, "CheckDeviceIfP2pServiceKnow: PeerDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :goto_13
    return-void

    .line 2676
    :cond_14
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2677
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_37

    .line 2678
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901011

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_13

    .line 2680
    :cond_37
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901012

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_13
.end method
