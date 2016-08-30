.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionDeferredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1415
    const-string v0, "WfdsService"

    const-string v1, "STATE : ProvisionDeferredState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$67(Lcom/lge/wfds/WfdsService;)V

    .line 1417
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 1536
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v7, 0x900021

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x5

    .line 1421
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_234

    .line 1529
    const/4 v5, 0x0

    .line 1531
    :goto_c
    return v5

    .line 1423
    :sswitch_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "confirmMsg"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "confirmMsg":Ljava/lang/String;
    const-string v5, "WfdsService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CMD_CONFIRM_SESSION: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1426
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1427
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v9, :cond_5a

    .line 1428
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    if-nez v5, :cond_4a

    .end local v0    # "confirmMsg":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_48
    :goto_48
    move v5, v6

    .line 1531
    goto :goto_c

    .line 1431
    .restart local v0    # "confirmMsg":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_4a
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    aget-object v7, v4, v6

    iput-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1433
    :cond_5a
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x901029

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_48

    .line 1434
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_63
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1435
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x90102a

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_48

    .line 1437
    :cond_74
    const-string v5, "WfdsService"

    const-string v7, "Invaild confirm message"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 1442
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :sswitch_7c
    const-string v5, "WfdsService"

    const-string v7, "Provision Discovery: user accept"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserAccept(Landroid/os/Message;)Z
    invoke-static {v5, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$32(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1444
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_48

    .line 1449
    :sswitch_97
    const-string v5, "WfdsService"

    const-string v7, "Provision Discovery: user reject"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserReject()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$33(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1451
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_48

    .line 1456
    :sswitch_af
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1457
    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 1458
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1459
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    .line 1460
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1462
    :cond_e3
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1468
    :sswitch_f0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1469
    .local v2, "eventStr":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v3, v2}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v3, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1473
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 1474
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    if-ne v5, v9, :cond_48

    .line 1475
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v7, v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1476
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    if-eqz v5, :cond_48

    .line 1477
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v7

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lge/wfds/WfdsNative;->deviceAuth(Landroid/net/wifi/p2p/WifiP2pConfigEx;)Ljava/lang/String;

    .line 1478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v7

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v7, v7, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1479
    .local v1, "event":Ljava/lang/String;
    const-string v5, "WfdsService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KEYPAD Event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 1481
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1487
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "eventStr":Ljava/lang/String;
    .end local v3    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_1aa
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1488
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v7

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService;->access$57(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1489
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1493
    :sswitch_1d3
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1494
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1499
    :sswitch_1e5
    const-string v5, "WfdsService"

    const-string v7, "WFDS_PD_DEFERRED/RECEIVED_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$30(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1501
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1505
    :sswitch_1fe
    const-string v5, "WfdsService"

    const-string v7, "ProvisionDeferredState - P2P Group Removed.."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v7, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v7

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_48

    .line 1510
    :sswitch_212
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_48

    .line 1515
    :sswitch_219
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_48

    .line 1520
    :sswitch_220
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v7, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v5, p1, v7, v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_48

    .line 1525
    :sswitch_22a
    const-string v5, "WfdsService"

    const-string v7, "Invaild Event (WFDS_PROV_DISC_DEFER_EVENT)"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 1421
    nop

    :sswitch_data_234
    .sparse-switch
        0x900001 -> :sswitch_212
        0x900004 -> :sswitch_219
        0x900005 -> :sswitch_220
        0x90000d -> :sswitch_d
        0x901008 -> :sswitch_1e5
        0x901009 -> :sswitch_1e5
        0x901029 -> :sswitch_7c
        0x90102a -> :sswitch_97
        0x902007 -> :sswitch_1d3
        0x90200a -> :sswitch_af
        0x90200c -> :sswitch_f0
        0x90200d -> :sswitch_1aa
        0x902010 -> :sswitch_22a
        0x902012 -> :sswitch_1fe
    .end sparse-switch
.end method
