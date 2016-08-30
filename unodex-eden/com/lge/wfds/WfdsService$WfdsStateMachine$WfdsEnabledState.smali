.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 721
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V
    .registers 4
    .param p1, "lostDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 1103
    if-eqz p1, :cond_26

    .line 1104
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsPeerList;->removePeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 1106
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v0, :cond_26

    .line 1107
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 1108
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$45(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    .line 1111
    :cond_26
    return-void
.end method

.method private processProvDiscReq(Lcom/lge/wfds/WfdsDevice;)V
    .registers 9
    .param p1, "dev"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 1067
    if-eqz p1, :cond_86

    .line 1068
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v0, :cond_7e

    .line 1069
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1070
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 1076
    :cond_1f
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v6

    new-instance v0, Lcom/lge/wfds/session/AspSession;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 1077
    iget-object v2, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v2, v2, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 1078
    iget-object v3, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v3, v3, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    .line 1079
    iget-object v4, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v4, v4, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 1080
    iget-object v5, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v5, v5, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1076
    invoke-static {v6, v0}, Lcom/lge/wfds/WfdsService;->access$59(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)V

    .line 1085
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 1086
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    if-nez v0, :cond_62

    .line 1087
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 1089
    :cond_62
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$45(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->notifyConnectSessionRequestToService(Lcom/lge/wfds/WfdsDevice;)V

    .line 1099
    :goto_7d
    return-void

    .line 1093
    :cond_7e
    const-string v0, "WfdsService"

    const-string v1, "processProvDiscReq : wfdsInfo is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 1096
    :cond_86
    const-string v0, "WfdsService"

    const-string v1, "processProvDiscReq : dev is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 725
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/wfds/WfdsService;->access$37(Lcom/lge/wfds/WfdsService;I)V

    .line 726
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->resetWfdsTimer()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$38(Lcom/lge/wfds/WfdsService;)V

    .line 727
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 728
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$40(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 732
    :cond_3f
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 733
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->selectPreferredScanChannel()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$41(Lcom/lge/wfds/WfdsService;)V

    .line 734
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->checkDiscoveryAndExcute()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$42(Lcom/lge/wfds/WfdsService;)V

    .line 735
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/wfds/WfdsNative;->p2pFindBlock(Z)Z

    .line 736
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATE : WfdsEnabledState - enter: this device mac "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 1115
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 28
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 741
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_a50

    .line 1061
    const/16 v22, 0x0

    .line 1063
    :goto_b
    return v22

    .line 743
    :sswitch_c
    const-string v22, "WfdsService"

    const-string v23, "Received the Event that WfdsMonitor is connected to supplicant"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->setWfdsEnabled(Z)Z

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$34(Lcom/lge/wfds/WfdsService;Z)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_86

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lge/wfds/WfdsNative;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$40(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 748
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "this device mac "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_86
    :goto_86
    :sswitch_86
    const/16 v22, 0x1

    goto :goto_b

    .line 753
    :sswitch_89
    const-string v22, "WfdsService"

    const-string v23, "Do not process WFDS_SCAN_ALWAYS_MODE_CHANGES event in WfdsEnabledState"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 757
    :sswitch_91
    const-string v22, "WfdsService"

    const-string v23, "WfdsEnabledState: Receive the WFDS_DISABLE message"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v22

    if-eqz v22, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v22

    if-eqz v22, :cond_cf

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 761
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    const/16 v23, 0x0

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$15(Lcom/lge/wfds/WfdsService;Z)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$6(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_86

    .line 767
    :sswitch_f2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 768
    .local v9, "eventStr":Ljava/lang/String;
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 770
    .local v21, "token":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_86

    .line 771
    const/16 v22, 0x2

    const/16 v23, 0x2

    aget-object v23, v21, v23

    const-string v24, "p2p_dev_addr="

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    if-eqz v22, :cond_19a

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_86

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_17a

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    new-instance v23, Lcom/lge/wfds/WfdsInfo;

    invoke-direct/range {v23 .. v23}, Lcom/lge/wfds/WfdsInfo;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 778
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v23, v21, v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    goto/16 :goto_86

    .line 781
    :cond_19a
    const-string v22, "WfdsService"

    const-string v23, "WFDS_GET_INTERFACE_ADDRESS_EVENT: mPeerDevice is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 789
    .end local v9    # "eventStr":Ljava/lang/String;
    .end local v21    # "token":[Ljava/lang/String;
    :sswitch_1a3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/lge/wfds/WfdsDevice;

    .line 790
    .local v7, "device":Lcom/lge/wfds/WfdsDevice;
    if-eqz v7, :cond_86

    iget-object v0, v7, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_86

    .line 791
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "WFDS device is found ["

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/lge/wfds/WfdsPeerList;->addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, v22

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v0, v7}, Lcom/lge/wfds/WfdsService;->access$44(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$45(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_86

    .line 803
    .end local v7    # "device":Lcom/lge/wfds/WfdsDevice;
    :sswitch_20a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_86

    .line 804
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 806
    .local v17, "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "WFDS device is lost ["

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v13

    .line 809
    .local v13, "lostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v13, :cond_86

    .line 810
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$46(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto/16 :goto_86

    .line 817
    .end local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_26a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_86

    .line 818
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 820
    .restart local v17    # "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "WFDS device INFO is lost ["

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v11

    .line 823
    .local v11, "infoLostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v11, :cond_86

    .line 824
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 826
    new-instance v15, Lcom/lge/wfds/WfdsDevice;

    invoke-virtual {v11}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/lge/wfds/WfdsDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 827
    .local v15, "p2pDevice":Lcom/lge/wfds/WfdsDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/lge/wfds/WfdsPeerList;->addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, v22

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static {v0, v15}, Lcom/lge/wfds/WfdsService;->access$47(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_86

    .line 835
    .end local v11    # "infoLostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v15    # "p2pDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_2e6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_86

    .line 836
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 838
    .restart local v17    # "peerAddr":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "P2P device is lost ["

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v13

    .line 841
    .restart local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    if-eqz v13, :cond_86

    .line 842
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->procLostWfdsDevice(Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_86

    .line 848
    .end local v13    # "lostDevice":Lcom/lge/wfds/WfdsDevice;
    .end local v17    # "peerAddr":Ljava/lang/String;
    :sswitch_335
    const-string v22, "WfdsService"

    const-string v23, "Receive the ADVERTISE_SERVICE Method"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 852
    .local v4, "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableAdvertiseService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v0, v1, v4, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$7(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    goto/16 :goto_86

    .line 856
    .end local v4    # "advMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelAdvertiseService(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$8(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_86

    .line 861
    :sswitch_37f
    const-string v22, "WfdsService"

    const-string v23, "Receive the SERVICE_STATUS_CHANGE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 863
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 866
    .local v14, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v23

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->changeServiceStatus(Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V
    invoke-static {v0, v1, v10, v14, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$9(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V

    goto/16 :goto_86

    .line 871
    .end local v10    # "id":I
    .end local v14    # "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_3c2
    const-string v22, "WfdsService"

    const-string v23, "WfdsEnabledState - Receive the SEEK_SERVICE Method"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/lge/wfds/WfdsDiscoveryMethod;

    .line 875
    .local v19, "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableSeekService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$10(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    goto/16 :goto_86

    .line 879
    .end local v19    # "seekMethod":Lcom/lge/wfds/WfdsDiscoveryMethod;
    :sswitch_3f7
    const-string v22, "WfdsService"

    const-string v23, "Receive the CANCEL_SEEK_SERVICE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelSeekService(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$11(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_86

    .line 884
    :sswitch_415
    const-string v22, "WfdsService"

    const-string v23, "Received the CONNECT_SESSION cmd"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pFindBlock(Z)Z

    .line 886
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-class v23, Lcom/lge/wfds/WfdsPdMethod;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/lge/wfds/WfdsPdMethod;

    .line 888
    .local v16, "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->connectSession(Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$12(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z

    move-result v22

    if-nez v22, :cond_476

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900025

    .line 890
    const/16 v24, 0x2

    .line 889
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_86

    .line 893
    :cond_476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$13(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 897
    .end local v16    # "pdMethod":Lcom/lge/wfds/WfdsPdMethod;
    :sswitch_48b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mSentServiceRequestSentEvent:Z
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$48(Lcom/lge/wfds/WfdsService;)Z

    move-result v22

    if-nez v22, :cond_4c9

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v23

    const/16 v24, 0x1

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static/range {v22 .. v24}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$51(Lcom/lge/wfds/WfdsService;Z)V

    goto/16 :goto_86

    .line 901
    :cond_4c9
    const-string v22, "WfdsService"

    const-string v23, "WFDS_PROV_DISC_REQ_SENT_EVENT is already sent"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86

    .line 906
    :sswitch_4d2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/lge/wfds/WfdsDevice;

    .line 907
    .local v6, "dev":Lcom/lge/wfds/WfdsDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pFindBlock(Z)Z

    .line 908
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->processProvDiscReq(Lcom/lge/wfds/WfdsDevice;)V

    goto/16 :goto_86

    .line 912
    .end local v6    # "dev":Lcom/lge/wfds/WfdsDevice;
    :sswitch_4f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$14(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v22

    if-eqz v22, :cond_539

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 917
    :cond_539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 922
    :sswitch_54e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDisplay(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$17(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_86

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 930
    :sswitch_58c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 931
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Advertiser: DEFER_EVENT: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/p2p/WifiP2pConfigEx;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v22

    if-nez v22, :cond_641

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsPeerList;->getP2pPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 937
    :cond_641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6a0

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsDialog;->showProvDeferUserInputDialog(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_86

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$18(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 941
    :cond_6a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_86

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v24, v0

    .line 942
    invoke-virtual/range {v22 .. v24}, Lcom/lge/wfds/WfdsDialog;->showProvDiscEnterPinDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)Z

    move-result v22

    .line 943
    if-eqz v22, :cond_86

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$18(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 950
    :sswitch_713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v23

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$57(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 955
    :sswitch_743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_86

    .line 959
    :sswitch_752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processPersistentUnknown(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$20(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    goto/16 :goto_86

    .line 968
    :sswitch_769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processP2pGroupFormationFailure()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$21(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    goto/16 :goto_86

    .line 973
    :sswitch_774
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 974
    .local v18, "reason":I
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Connection Failed: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    move-result-object v17

    .line 976
    .restart local v17    # "peerAddr":Ljava/lang/String;
    if-eqz v17, :cond_7be

    .line 977
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Connection failed with "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_7be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pFindBlock(Z)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 987
    .end local v17    # "peerAddr":Ljava/lang/String;
    .end local v18    # "reason":I
    :sswitch_7e6
    const-string v22, "WfdsService"

    const-string v23, "It is not a connection between Wfds devices"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pFindBlock(Z)Z

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v22

    if-eqz v22, :cond_834

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 993
    :cond_834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$22(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 998
    :sswitch_849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConnectCapa(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$23(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_86

    .line 1002
    :sswitch_860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getConnectCapa(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$24(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    goto/16 :goto_86

    .line 1006
    :sswitch_86f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConfigMethod(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$25(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_86

    .line 1010
    :sswitch_886
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "GET_DISPLAY_PIN: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$58(Lcom/lge/wfds/WfdsService;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$58(Lcom/lge/wfds/WfdsService;)I

    move-result v22

    if-nez v22, :cond_8e2

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900022

    const v24, 0xbc6146    # 1.7299968E-38f

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    .line 1016
    :goto_8cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lge/wfds/WfdsDialog;->dismissShowPinDialog()V

    goto/16 :goto_86

    .line 1014
    :cond_8e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900022

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v24, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v24

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static/range {v24 .. v24}, Lcom/lge/wfds/WfdsService;->access$58(Lcom/lge/wfds/WfdsService;)I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto :goto_8cf

    .line 1020
    :sswitch_905
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "WfdsEnabledState: CMD_TEST_SET_LISTEN_CHANNEL to "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setListenChannelForTest(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$26(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_86

    .line 1025
    :sswitch_936
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1026
    .local v5, "channel":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "ssid"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1027
    .local v20, "ssid":Ljava/lang/String;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "CREATE_GROUP: Operating channel "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", ssid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService;->access$59(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsCreatGroupBroadcast()V
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$60(Lcom/lge/wfds/WfdsService;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/lge/wfds/WfdsNative;->wfdsGroupAdd(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9ca

    .line 1034
    const-string v22, "WfdsService"

    const-string v23, "Autonomous Group is created"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x900020

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static/range {v23 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v23

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_86

    .line 1038
    :cond_9ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x90001f

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_86

    .line 1044
    .end local v5    # "channel":I
    .end local v20    # "ssid":Ljava/lang/String;
    :sswitch_9e2
    const-wide/16 v22, 0x1388

    :try_start_9e4
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9e7
    .catch Ljava/lang/InterruptedException; {:try_start_9e4 .. :try_end_9e7} :catch_a08

    .line 1048
    :goto_9e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsNative;->p2pSetChannel(I)Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    const v23, 0x901010

    invoke-virtual/range {v22 .. v23}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_86

    .line 1045
    :catch_a08
    move-exception v8

    .line 1046
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v22, "WfdsService"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Interrupted Exception : "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e7

    .line 1054
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :sswitch_a20
    const/16 v12, 0x1388

    .line 1055
    .local v12, "listenTimeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v22

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static/range {v22 .. v22}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/lge/wfds/WfdsNative;->p2pListen(I)Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-object/from16 v23, v0

    const v24, 0x901010

    invoke-virtual/range {v23 .. v24}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    int-to-long v0, v12

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_86

    .line 741
    :sswitch_data_a50
    .sparse-switch
        0x900001 -> :sswitch_335
        0x900002 -> :sswitch_37f
        0x900003 -> :sswitch_368
        0x900004 -> :sswitch_3c2
        0x900005 -> :sswitch_415
        0x90000a -> :sswitch_3f7
        0x900033 -> :sswitch_849
        0x900034 -> :sswitch_860
        0x900035 -> :sswitch_86f
        0x900036 -> :sswitch_886
        0x900037 -> :sswitch_936
        0x900038 -> :sswitch_905
        0x901001 -> :sswitch_91
        0x901006 -> :sswitch_7e6
        0x901007 -> :sswitch_774
        0x90100b -> :sswitch_89
        0x90100f -> :sswitch_9e2
        0x901010 -> :sswitch_a20
        0x901017 -> :sswitch_86
        0x902001 -> :sswitch_c
        0x902003 -> :sswitch_1a3
        0x902004 -> :sswitch_4d2
        0x902005 -> :sswitch_48b
        0x902007 -> :sswitch_743
        0x90200a -> :sswitch_4f2
        0x90200b -> :sswitch_54e
        0x90200d -> :sswitch_713
        0x90200e -> :sswitch_752
        0x902010 -> :sswitch_58c
        0x902011 -> :sswitch_86
        0x902013 -> :sswitch_769
        0x902014 -> :sswitch_f2
        0x902016 -> :sswitch_20a
        0x902017 -> :sswitch_26a
        0x902018 -> :sswitch_2e6
    .end sparse-switch
.end method
