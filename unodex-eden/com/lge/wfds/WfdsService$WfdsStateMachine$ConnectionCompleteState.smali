.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionCompleteState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private checkServiceStatusAndChange()V
    .registers 8

    .prologue
    .line 2320
    .line 2321
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2339
    :goto_10
    return-void

    .line 2324
    :cond_11
    const-string v2, "WfdsService"

    const-string v3, "ConnectionCompleteState: exist: checkServiceStatusAndChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDiscoveryStore;->getConfiguredAllAdvertise()Ljava/util/List;

    move-result-object v1

    .line 2326
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wfds/WfdsDiscoveryMethod;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_40

    .line 2338
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    goto :goto_10

    .line 2326
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 2327
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-eqz v3, :cond_2a

    .line 2328
    iget-object v3, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceStatus()I

    move-result v3

    if-nez v3, :cond_2a

    .line 2331
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2332
    const-string v3, "WfdsService"

    const-string v4, "ConnectionCompleteState: exist: change the service status value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v3

    iget-object v4, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v4}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAdvertiseId()I

    move-result v4

    .line 2334
    const/4 v5, 0x1

    .line 2335
    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v6

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v6}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v6

    .line 2333
    invoke-virtual {v3, v4, v5, v6}, Lcom/lge/wfds/WfdsDiscoveryStore;->changeServiceStatus(III)Z

    goto :goto_2a
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 2272
    const-string v1, "WfdsService"

    const-string v2, "STATE: ConnectionCompleteState, entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$59(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)V

    .line 2275
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$27(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 2276
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 2277
    .local v0, "networkName":Ljava/lang/String;
    if-eqz v0, :cond_49

    const-string v1, "4.1.1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2278
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v2, 0x90100f

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 2281
    .end local v0    # "networkName":Ljava/lang/String;
    :cond_49
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 2316
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->checkServiceStatusAndChange()V

    .line 2317
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2285
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ac

    .line 2309
    const/4 v0, 0x0

    .line 2311
    :goto_7
    return v0

    .line 2287
    :sswitch_8
    const-string v0, "WfdsService"

    const-string v2, "ConnectionCompleteState: WFDS_SESSION_OPENING_FAILED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    const/4 v3, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v0, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    :cond_1d
    :goto_1d
    move v0, v1

    .line 2311
    goto :goto_7

    .line 2292
    :sswitch_1f
    const-string v0, "WfdsService"

    const-string v2, "ConnectionCompleteState: WFDS_SESSION_REQUEST_DISCONNECT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2294
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2295
    :cond_62
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2296
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1d

    .line 2301
    :sswitch_73
    const-string v0, "WfdsService"

    const-string v2, "ConnectionCompleteState: WFDS_PEER_DEVICE_DISCONNECTED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2303
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 2304
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1d

    .line 2285
    :sswitch_data_ac
    .sparse-switch
        0x90100e -> :sswitch_73
        0x901015 -> :sswitch_8
        0x901016 -> :sswitch_1f
    .end sparse-switch
.end method
