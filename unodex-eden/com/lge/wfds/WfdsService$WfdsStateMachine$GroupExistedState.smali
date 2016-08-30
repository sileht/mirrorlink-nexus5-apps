.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupExistedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procPeerConnComp()Z
    .registers 7

    .prologue
    .line 1896
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1897
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1898
    :cond_38
    const-string v2, "WfdsService"

    const-string v3, "Invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v2, 0x0

    .line 1915
    :goto_40
    return v2

    .line 1902
    :cond_41
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    .line 1903
    .local v1, "mClient":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    if-eqz v1, :cond_5b

    .line 1904
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_98

    .line 1912
    :cond_5b
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v2

    if-nez v2, :cond_96

    .line 1913
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1915
    :cond_96
    const/4 v2, 0x1

    goto :goto_40

    .line 1904
    :cond_98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1905
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    if-nez v3, :cond_b8

    .line 1906
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1908
    :cond_b8
    const-string v3, "WfdsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Client Address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    goto/16 :goto_55
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1693
    const-string v0, "WfdsService"

    const-string v1, "STATE: GroupExistedState, entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 1920
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1698
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_430

    .line 1890
    const/4 v9, 0x0

    .line 1892
    :goto_6
    return v9

    .line 1700
    :sswitch_7
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: ADVERTISE_SERVICE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-class v10, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1702
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 1703
    .local v0, "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const/4 v10, 0x1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableAdvertiseService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v9, p1, v0, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    .line 1892
    .end local v0    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :cond_2c
    :goto_2c
    const/4 v9, 0x1

    goto :goto_6

    .line 1707
    :sswitch_2e
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: SEEK_SERVICE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-class v10, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1709
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 1710
    .local v6, "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const/4 v10, 0x1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableSeekService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v9, p1, v6, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    goto :goto_2c

    .line 1714
    .end local v6    # "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_54
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: CONNECT_SESSION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-class v10, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1716
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/lge/wfds/WfdsPdMethod;

    .line 1717
    .local v5, "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const/4 v10, 0x1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->connectSession(Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z
    invoke-static {v9, p1, v5, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$12(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 1718
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x900025

    .line 1719
    const/4 v11, 0x2

    .line 1718
    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto :goto_2c

    .line 1724
    .end local v5    # "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    :sswitch_86
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: DISCONNECT_SESSION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x900020

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1726
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto :goto_2c

    .line 1731
    :sswitch_9b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-class v10, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1732
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/AspSession;

    .line 1734
    .local v7, "session":Lcom/lge/wfds/session/AspSession;
    const-string v9, "WfdsService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Received CMD_CANCEL_CONNECT_SESSION: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1735
    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1734
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x900020

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1740
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1742
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v9

    if-eqz v9, :cond_105

    .line 1743
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v10

    .line 1744
    const/16 v11, 0x9

    .line 1743
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v10, v11}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_2c

    .line 1746
    :cond_105
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v10

    iget v11, v7, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v7, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/lge/wfds/SessionController;->getSession(Ljava/lang/Integer;Ljava/lang/String;)Lcom/lge/wfds/session/AspSession;

    move-result-object v10

    .line 1747
    const/16 v11, 0x9

    .line 1746
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v10, v11}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_2c

    .line 1753
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_128
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PROV_DISC_DEF_PIN_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPinWithinGroup()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$36(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1755
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$37(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    move-result-object v10

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2c

    .line 1759
    :sswitch_141
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PROV_DISC_DEFER_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18d

    .line 1762
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1771
    :goto_16d
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 1772
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$67(Lcom/lge/wfds/WfdsService;)V

    .line 1773
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$37(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    move-result-object v10

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2c

    .line 1764
    :cond_18d
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-static {v10, v9}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1765
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v11

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1766
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v9

    if-nez v9, :cond_1ec

    .line 1767
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v11

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v11}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lge/wfds/WfdsPeerList;->getP2pPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1769
    :cond_1ec
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z

    goto/16 :goto_16d

    .line 1777
    :sswitch_207
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PROV_DISC_PERSISTENT_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    .line 1779
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$37(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    move-result-object v10

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2c

    .line 1783
    :sswitch_224
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PROV_DISC_FAIL_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1785
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v9

    if-nez v9, :cond_2c

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1786
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 1787
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x90100d

    invoke-virtual {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_2c

    .line 1793
    :sswitch_260
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_P2P_GROUP_REMOVED_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1796
    .local v3, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    const-string v4, ""

    .line 1798
    .local v4, "groupOwnerdeviceAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    if-eqz v9, :cond_289

    .line 1799
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v4, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1804
    :cond_289
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/wfds/SessionController;->getSessionList()Ljava/util/Iterator;

    move-result-object v8

    .line 1806
    .local v8, "sessionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_297
    :goto_297
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2bf

    .line 1825
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    const v10, 0x901048

    invoke-virtual {v9, v10}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    .line 1829
    const-wide/16 v10, 0x12c

    :try_start_2af
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b2
    .catch Ljava/lang/InterruptedException; {:try_start_2af .. :try_end_2b2} :catch_302

    .line 1834
    :goto_2b2
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v10

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2c

    .line 1807
    :cond_2bf
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/AspSession;

    .line 1808
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v7, :cond_297

    .line 1809
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v9

    if-nez v9, :cond_2f6

    .line 1810
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2ee

    .line 1811
    iget-object v9, v7, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_297

    .line 1812
    const-string v9, "WfdsService"

    const-string v10, "DISCONNECTED: Report to each service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    .line 1814
    const/16 v10, 0x8

    .line 1813
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v7, v10}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_297

    .line 1817
    :cond_2ee
    const-string v9, "WfdsService"

    const-string v10, "groupOwnerdeviceAddress.length() is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_297

    .line 1820
    :cond_2f6
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    const/16 v10, 0x8

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v7, v10}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_297

    .line 1830
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_302
    move-exception v2

    .line 1831
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v9, "WfdsService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Interrupted Exception : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b2

    .line 1840
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v4    # "groupOwnerdeviceAddress":Ljava/lang/String;
    .end local v8    # "sessionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :sswitch_318
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_P2P_DISCONNECTED_EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1846
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1848
    .local v1, "deviceAddr":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/lge/wfds/SessionController;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 1850
    .restart local v8    # "sessionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_34d
    :goto_34d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_36f

    .line 1857
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    const v10, 0x901049

    invoke-virtual {v9, v10, v1}, Lcom/lge/wfds/SessionController;->sendMessage(ILjava/lang/Object;)V

    .line 1858
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x90100e

    const-wide/16 v12, 0x64

    invoke-virtual {v9, v10, v1, v12, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_2c

    .line 1851
    :cond_36f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/wfds/session/AspSession;

    .line 1852
    .restart local v7    # "session":Lcom/lge/wfds/session/AspSession;
    iget-object v9, v7, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34d

    .line 1853
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    .line 1854
    const/16 v10, 0x8

    .line 1853
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v7, v10}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_34d

    .line 1863
    .end local v1    # "deviceAddr":Ljava/lang/String;
    .end local v7    # "session":Lcom/lge/wfds/session/AspSession;
    .end local v8    # "sessionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :sswitch_389
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PEER_CONNECT_COMPLETED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->procPeerConnComp()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1865
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$34(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    move-result-object v10

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2c

    .line 1870
    :sswitch_3a3
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_CONNECTION_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v9

    if-eqz v9, :cond_3d8

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    if-eqz v9, :cond_3d8

    .line 1872
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v10

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v10}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v10

    const/4 v11, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v9, v10, v11}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1874
    :cond_3d8
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1875
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelConnect()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$35(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1876
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x901016

    invoke-virtual {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_2c

    .line 1881
    :sswitch_3f4
    const-string v9, "WfdsService"

    const-string v10, "GroupExistedState: WFDS_PD_DEFERRED(RECEIVED)_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$30(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1883
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v9

    if-nez v9, :cond_2c

    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v9}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1884
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v9}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 1885
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v10, 0x90100d

    invoke-virtual {v9, v10}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_2c

    .line 1698
    :sswitch_data_430
    .sparse-switch
        0x900001 -> :sswitch_7
        0x900004 -> :sswitch_2e
        0x900005 -> :sswitch_54
        0x90000e -> :sswitch_86
        0x90000f -> :sswitch_9b
        0x901006 -> :sswitch_389
        0x901008 -> :sswitch_3f4
        0x901009 -> :sswitch_3f4
        0x90100a -> :sswitch_3a3
        0x902007 -> :sswitch_224
        0x90200a -> :sswitch_128
        0x90200d -> :sswitch_207
        0x902010 -> :sswitch_141
        0x902012 -> :sswitch_260
        0x902015 -> :sswitch_318
    .end sparse-switch
.end method
