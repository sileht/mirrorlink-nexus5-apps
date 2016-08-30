.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pConnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procPeerConnComp()Z
    .registers 8

    .prologue
    .line 1648
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1649
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1650
    :cond_38
    const/4 v3, 0x0

    .line 1679
    :goto_39
    return v3

    .line 1653
    :cond_3a
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$69(Lcom/lge/wfds/WfdsService;)V

    .line 1654
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1655
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    .line 1656
    .local v1, "mClient":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    if-eqz v1, :cond_6d

    .line 1657
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_aa

    .line 1665
    :cond_6d
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    if-nez v3, :cond_a8

    .line 1666
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1679
    .end local v1    # "mClient":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_a8
    :goto_a8
    const/4 v3, 0x1

    goto :goto_39

    .line 1657
    .restart local v1    # "mClient":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_aa
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1658
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    if-nez v4, :cond_ca

    .line 1659
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1661
    :cond_ca
    const-string v4, "WfdsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Client Address: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v5, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    goto/16 :goto_67

    .line 1669
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "mClient":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_f0
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 1670
    .local v2, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    if-nez v3, :cond_118

    .line 1671
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1673
    :cond_118
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1674
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    if-nez v3, :cond_a8

    .line 1675
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_a8
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 1542
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE : P2pConnectingState - enter : connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1543
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1542
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    .line 1545
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1546
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    const-string v1, "P2pConnectingState"

    invoke-virtual {v0, v1}, Lcom/lge/wfds/SessionController;->acquireWakeLock(Ljava/lang/String;)Z

    .line 1548
    :cond_44
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1685
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    const-string v1, "P2pConnectingState"

    invoke-virtual {v0, v1}, Lcom/lge/wfds/SessionController;->releaseWakeLock(Ljava/lang/String;)Z

    .line 1687
    :cond_1b
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v3, 0x900021

    const/4 v4, 0x5

    .line 1552
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_15a

    .line 1642
    const/4 v2, 0x0

    .line 1644
    :goto_a
    return v2

    .line 1554
    :sswitch_b
    const-string v2, "WfdsService"

    const-string v3, "P2pConnectingState: WFDS_PEER_CONNECT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->procPeerConnComp()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1556
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$34(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 1644
    :cond_23
    :goto_23
    :sswitch_23
    const/4 v2, 0x1

    goto :goto_a

    .line 1562
    :sswitch_25
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processP2pGroupFormationFailure()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$21(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto :goto_23

    .line 1567
    :sswitch_2b
    const-string v2, "WfdsService"

    const-string v3, "P2pConnectingState: WFDS_P2P_GROUP_REMOVED_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processP2pGroupFormationFailure()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$21(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1569
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_23

    .line 1573
    :sswitch_43
    const-string v2, "WfdsService"

    const-string v3, "P2pConnectingState: WFDS_CONNECTION_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 1575
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    .line 1576
    const/4 v4, 0x7

    .line 1575
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1578
    :cond_78
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1579
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelConnect()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$35(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1580
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_23

    .line 1585
    :sswitch_96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1586
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/session/AspSession;

    .line 1588
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received CMD_CANCEL_CONNECT_SESSION: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1589
    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1588
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$69(Lcom/lge/wfds/WfdsService;)V

    .line 1593
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900020

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1595
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1596
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelConnect()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$35(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1598
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    .line 1599
    const/16 v4, 0x9

    .line 1598
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1601
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_23

    .line 1606
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_115
    const-string v2, "WfdsService"

    const-string v3, "P2pConnectingState: WFDS_GROUP_STARTED_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1608
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1609
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->startDhcpFileObserver()Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$70(Lcom/lge/wfds/WfdsService;)Z

    goto/16 :goto_23

    .line 1614
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :sswitch_133
    const-string v2, "WfdsService"

    const-string v3, "P2pConnectingState: WFDS_DHCP_FILE_MODIFIED: Deferred"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 1627
    :sswitch_141
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_23

    .line 1632
    :sswitch_148
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_23

    .line 1637
    :sswitch_14f
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_23

    .line 1552
    nop

    :sswitch_data_15a
    .sparse-switch
        0x900001 -> :sswitch_141
        0x900004 -> :sswitch_148
        0x900005 -> :sswitch_14f
        0x90000f -> :sswitch_96
        0x901006 -> :sswitch_b
        0x90100a -> :sswitch_43
        0x901017 -> :sswitch_133
        0x902007 -> :sswitch_23
        0x90200a -> :sswitch_23
        0x90200f -> :sswitch_25
        0x902011 -> :sswitch_115
        0x902012 -> :sswitch_2b
        0x902013 -> :sswitch_25
    .end sparse-switch
.end method
