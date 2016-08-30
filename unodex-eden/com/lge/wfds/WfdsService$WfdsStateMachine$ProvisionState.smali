.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private checkInfoForConnection()Z
    .registers 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1405
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-nez v0, :cond_34

    .line 1406
    :cond_32
    const/4 v0, 0x0

    .line 1408
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x1

    goto :goto_33
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1158
    const-string v0, "WfdsService"

    const-string v1, "STATE : ProvisionState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$61(Lcom/lge/wfds/WfdsService;I)V

    .line 1161
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->checkInfoForConnection()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1162
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 1169
    :goto_22
    return-void

    .line 1167
    :cond_23
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->checkDeviceIfP2pServiceKnow()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$28(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1168
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$62(Lcom/lge/wfds/WfdsService;)V

    goto :goto_22
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1399
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 1401
    :cond_16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 19
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1177
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_63c

    .line 1391
    const/4 v2, 0x0

    .line 1393
    :goto_8
    return v2

    .line 1179
    :sswitch_9
    const-string v2, "WfdsService"

    const-string v3, "The connection request is ignored from WifiP2pService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    const/4 v4, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1184
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 1393
    :cond_45
    :goto_45
    const/4 v2, 0x1

    goto :goto_8

    .line 1189
    :sswitch_47
    invoke-direct/range {p0 .. p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->checkInfoForConnection()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_45

    .line 1194
    :cond_5d
    const-string v2, "WfdsService"

    const-string v3, "ProvisionState: WifiP2pService also know the peer device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v2, v2, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c9

    .line 1196
    const/4 v8, 0x4

    .line 1200
    .local v8, "connectCapa":I
    :goto_78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 1201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v5

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v5, v5, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v6

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v6

    iget v6, v6, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v7

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v7}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v7, v7, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 1200
    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->requestP2pConnection(Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z
    invoke-static/range {v2 .. v8}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$29(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z

    goto/16 :goto_45

    .line 1198
    .end local v8    # "connectCapa":I
    :cond_c9
    const/4 v8, 0x1

    .restart local v8    # "connectCapa":I
    goto :goto_78

    .line 1206
    .end local v8    # "connectCapa":I
    :sswitch_cb
    invoke-direct/range {p0 .. p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->checkInfoForConnection()Z

    move-result v2

    if-eqz v2, :cond_e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mRetryConnectionCnt:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$63(Lcom/lge/wfds/WfdsService;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/lge/wfds/WfdsService;->access$61(Lcom/lge/wfds/WfdsService;I)V

    const/4 v2, 0x3

    if-le v3, v2, :cond_121

    .line 1207
    :cond_e5
    const-string v2, "WfdsService"

    const-string v3, "ProvisionState: WifiP2pService don\'t know the peer device or Connection information is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$61(Lcom/lge/wfds/WfdsService;I)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    const/4 v4, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1215
    :cond_121
    const-wide/16 v2, 0x64

    :try_start_123
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_126
    .catch Ljava/lang/InterruptedException; {:try_start_123 .. :try_end_126} :catch_12f

    .line 1219
    :goto_126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->checkDeviceIfP2pServiceKnow()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$28(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto/16 :goto_45

    .line 1216
    :catch_12f
    move-exception v12

    .line 1217
    .local v12, "e":Ljava/lang/InterruptedException;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interrupted Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    .line 1224
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :sswitch_145
    const-string v2, "WfdsService"

    const-string v3, "Received the WFDS Provision Discovery Request from peer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 1229
    :sswitch_14e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 1230
    .local v13, "eventStr":Ljava/lang/String;
    if-eqz v13, :cond_45

    .line 1233
    new-instance v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v15, v13}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v15, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v10, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1235
    .local v10, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v2, "WfdsService"

    const-string v3, "Received the WFDS Provision Discovery Response from peer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v2, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v13}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1245
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13    # "eventStr":Ljava/lang/String;
    .end local v15    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1251
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1256
    :sswitch_1e9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 1257
    .restart local v13    # "eventStr":Ljava/lang/String;
    new-instance v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v15, v13}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 1259
    .restart local v15    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1261
    const-string v2, "WfdsService"

    const-string v3, "Process the WFDS_PROV_DISC_KEYPAD_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v3, v15, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 1265
    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z

    move-result v2

    .line 1266
    if-eqz v2, :cond_45

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/lge/wfds/WfdsService;->access$65(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    const/16 v3, 0x2ee0

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsNative;->p2pListen(I)Z

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$18(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1275
    .end local v13    # "eventStr":Ljava/lang/String;
    .end local v15    # "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    :sswitch_29a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDisplay(Ljava/lang/String;Z)Z
    invoke-static {v3, v2, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$17(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;Z)Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1281
    :sswitch_2c4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .line 1282
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Seeker: DEFER_EVENT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pConfigEx;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    if-eqz v9, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v3, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$67(Lcom/lge/wfds/WfdsService;)V

    .line 1288
    iget-object v2, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d6

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x1

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v3, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1292
    :try_start_354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget-object v3, v9, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$37(Lcom/lge/wfds/WfdsService;I)V

    .line 1293
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Display Pin Number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$58(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_385
    .catch Ljava/lang/NumberFormatException; {:try_start_354 .. :try_end_385} :catch_3b4

    .line 1298
    :goto_385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v4, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 1298
    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/WfdsDialog;->showProvDiscShowPinDialog(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_45

    .line 1294
    :catch_3b4
    move-exception v12

    .line 1295
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NumberFormatException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$37(Lcom/lge/wfds/WfdsService;I)V

    goto :goto_385

    .line 1301
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_3d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    const/4 v4, 0x2

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto/16 :goto_45

    .line 1307
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    :sswitch_3f0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 1308
    .local v11, "deviceAddr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-nez v2, :cond_422

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iput-object v11, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1312
    :cond_422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-eqz v2, :cond_463

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 1317
    :goto_43b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$57(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1315
    :cond_463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    goto :goto_43b

    .line 1323
    .end local v11    # "deviceAddr":Ljava/lang/String;
    :sswitch_46f
    const-string v2, "WfdsService"

    const-string v3, "WFDS_PD_DEFERRED/RECEIVED_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$30(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1329
    :sswitch_48e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 1330
    .local v14, "peerAddr":Ljava/lang/String;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received WFDS_PROV_DISC_ACCEPT_EVENT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    const/4 v4, 0x3

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$31(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto/16 :goto_45

    .line 1339
    .end local v14    # "peerAddr":Ljava/lang/String;
    :sswitch_4d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1345
    :sswitch_4ee
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1346
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/lge/wfds/session/AspSession;

    .line 1348
    .local v16, "session":Lcom/lge/wfds/session/AspSession;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received CMD_CANCEL_CONNECT_SESSION: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1349
    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1348
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-eqz v2, :cond_558

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    if-eqz v2, :cond_558

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    if-nez v2, :cond_567

    .line 1354
    :cond_558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x90001f

    .line 1355
    const/4 v4, 0x2

    .line 1354
    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_45

    .line 1359
    :cond_567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900020

    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, v0, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5bb

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsNative;->provisionTimeoutOccurred(Ljava/lang/String;)Z

    .line 1367
    :cond_5bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsNative;->p2pFlush()Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    .line 1372
    const/16 v4, 0x9

    .line 1371
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v3

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_45

    .line 1379
    .end local v16    # "session":Lcom/lge/wfds/session/AspSession;
    :sswitch_60f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900021

    const/4 v4, 0x5

    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_45

    .line 1383
    :sswitch_61e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900021

    const/4 v4, 0x5

    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_45

    .line 1387
    :sswitch_62d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900025

    const/4 v4, 0x5

    move-object/from16 v0, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_45

    .line 1177
    :sswitch_data_63c
    .sparse-switch
        0x900001 -> :sswitch_60f
        0x900004 -> :sswitch_61e
        0x900005 -> :sswitch_62d
        0x90000f -> :sswitch_4ee
        0x901007 -> :sswitch_9
        0x901008 -> :sswitch_46f
        0x901009 -> :sswitch_46f
        0x901011 -> :sswitch_47
        0x901012 -> :sswitch_cb
        0x902006 -> :sswitch_48e
        0x902007 -> :sswitch_4d4
        0x902008 -> :sswitch_145
        0x902009 -> :sswitch_14e
        0x90200a -> :sswitch_196
        0x90200b -> :sswitch_29a
        0x90200c -> :sswitch_1e9
        0x90200d -> :sswitch_3f0
        0x902010 -> :sswitch_2c4
    .end sparse-switch
.end method
