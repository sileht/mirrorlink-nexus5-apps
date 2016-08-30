.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpObtainingState"
.end annotation


# instance fields
.field private mSentServiceRequestConnectedEvent:Z

.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 3

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->mSentServiceRequestConnectedEvent:Z

    return-void
.end method

.method private procDhcpFileModified()V
    .registers 9

    .prologue
    .line 2120
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 2121
    const/4 v0, 0x0

    .line 2123
    .local v0, "ipAddr":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getIpAddrOfClient(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$40(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2125
    if-nez v0, :cond_2c

    .line 2126
    const-string v2, "WfdsService"

    const-string v3, "procDhcpFileModified : ipAddr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_2c
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 2130
    const/4 v1, 0x0

    .line 2131
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget v3, v3, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/SessionController;->getSession(Ljava/lang/Integer;Ljava/lang/String;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 2132
    if-eqz v1, :cond_74

    .line 2133
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 2137
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->mSentServiceRequestConnectedEvent:Z

    .line 2138
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    const/4 v4, 0x6

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 2140
    if-eqz v0, :cond_114

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_114

    .line 2141
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GO - Client IP : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$78(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v2

    if-eqz v2, :cond_ca

    .line 2143
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$78(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/DhcpFileObserver;->stopObserving()V

    .line 2146
    :cond_ca
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    if-eqz v2, :cond_ee

    .line 2147
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 2148
    :cond_ee
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 2152
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x90100c

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2160
    .end local v0    # "ipAddr":Ljava/net/InetAddress;
    :cond_113
    :goto_113
    return-void

    .line 2155
    .restart local v0    # "ipAddr":Ljava/net/InetAddress;
    :cond_114
    const-string v2, "WfdsService"

    const-string v3, "procDhcpFileModified : mLatestAspSession is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 2158
    .end local v0    # "ipAddr":Ljava/net/InetAddress;
    :cond_11c
    const-string v2, "WfdsService"

    const-string v3, "procDhcpFileModified : isGroupOwner false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113
.end method

.method private sendConnectStatusFailure(Lcom/lge/wfds/session/AspSession;)V
    .registers 4
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->mSentServiceRequestConnectedEvent:Z

    if-eqz v0, :cond_10

    .line 2164
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/16 v1, 0x8

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v0, p1, v1}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 2168
    :goto_f
    return-void

    .line 2166
    :cond_10
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/4 v1, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v0, p1, v1}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_f
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 1970
    const-string v1, "WfdsService"

    const-string v2, "STATE: IpObtainingState, entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->mSentServiceRequestConnectedEvent:Z

    .line 1973
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1975
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1976
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 1979
    :cond_30
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-nez v1, :cond_48

    .line 1980
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 2006
    :goto_47
    return-void

    .line 1984
    :cond_48
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1985
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService;->startDhcpFileObserver()Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$70(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 1986
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v2, 0x901016

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 1987
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_47

    .line 1991
    :cond_81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->mSentServiceRequestConnectedEvent:Z

    .line 1992
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x6

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1994
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$77(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    if-eqz v1, :cond_eb

    .line 1995
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$77(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 1996
    .local v0, "ipAddr":Ljava/net/InetAddress;
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client - GO IP : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 2000
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v2, 0x90100c

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2004
    .end local v0    # "ipAddr":Ljava/net/InetAddress;
    :cond_eb
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$69(Lcom/lge/wfds/WfdsService;)V

    goto/16 :goto_47
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 2172
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2010
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_1d6

    .line 2116
    :cond_8
    :goto_8
    return v4

    .line 2012
    :sswitch_9
    const-string v4, "WfdsService"

    const-string v6, "IpObtainingState: DHCP_FILE_MODIFIED Event"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->procDhcpFileModified()V

    :cond_13
    :goto_13
    move v4, v5

    .line 2116
    goto :goto_8

    .line 2017
    :sswitch_15
    const-string v4, "WfdsService"

    const-string v6, "IpObtainingState: WFDS_SESSION_REQUEST_DISCONNECT Event"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2019
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$39(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_13

    .line 2022
    :cond_38
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 2023
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 2024
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_13

    .line 2026
    :cond_55
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto :goto_13

    .line 2032
    :sswitch_5b
    const-string v4, "WfdsService"

    const-string v6, "IpObtainingState: WFDS_SESSION_OPENING_START Event"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lge/wfds/session/AspSession;

    .line 2034
    .local v3, "session":Lcom/lge/wfds/session/AspSession;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v4

    const v6, 0x901047

    invoke-virtual {v4, v6, v3}, Lcom/lge/wfds/SessionController;->sendMessage(ILjava/lang/Object;)V

    .line 2035
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$39(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_13

    .line 2040
    .end local v3    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_82
    const-string v4, "WfdsService"

    const-string v6, "IpObtainingState: WFDS_PEER_DEVICE_DISCONNECTED"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2042
    .local v0, "deviceAddr":Ljava/lang/String;
    if-eqz v0, :cond_ec

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 2043
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 2044
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 2045
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$39(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_13

    .line 2047
    :cond_ca
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2048
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 2049
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_13

    .line 2053
    :cond_ec
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_13

    .line 2060
    .end local v0    # "deviceAddr":Ljava/lang/String;
    :sswitch_f3
    const-string v5, "WfdsService"

    const-string v6, "IpObtainingState: WFDS_P2P_GROUP_REMOVED_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2063
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    const-string v2, ""

    .line 2065
    .local v2, "groupOwnerdeviceAddress":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    if-eqz v5, :cond_11c

    .line 2066
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v2, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2069
    :cond_11c
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2070
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-nez v5, :cond_15e

    .line 2071
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_155

    .line 2072
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2073
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->sendConnectStatusFailure(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_8

    .line 2076
    :cond_155
    const-string v5, "WfdsService"

    const-string v6, "groupOwnerdeviceAddress.length() is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2079
    :cond_15e
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->sendConnectStatusFailure(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_8

    .line 2087
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v2    # "groupOwnerdeviceAddress":Ljava/lang/String;
    :sswitch_16d
    const-string v5, "WfdsService"

    const-string v6, "IpObtainingState: WFDS_P2P_DISCONNECTED_EVENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2092
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2094
    .restart local v0    # "deviceAddr":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2095
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2096
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->sendConnectStatusFailure(Lcom/lge/wfds/session/AspSession;)V

    goto/16 :goto_8

    .line 2104
    .end local v0    # "deviceAddr":Ljava/lang/String;
    :sswitch_1c1
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v6, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_13

    .line 2109
    :sswitch_1cb
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v6, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v6, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_13

    .line 2010
    nop

    :sswitch_data_1d6
    .sparse-switch
        0x900001 -> :sswitch_1c1
        0x900004 -> :sswitch_1c1
        0x900005 -> :sswitch_1cb
        0x90100c -> :sswitch_5b
        0x90100e -> :sswitch_82
        0x901016 -> :sswitch_15
        0x901017 -> :sswitch_9
        0x902012 -> :sswitch_f3
        0x902015 -> :sswitch_16d
    .end sparse-switch
.end method
