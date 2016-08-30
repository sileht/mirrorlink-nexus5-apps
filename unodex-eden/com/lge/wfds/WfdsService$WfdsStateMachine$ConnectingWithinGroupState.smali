.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingWithinGroupState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private changeState()V
    .registers 3

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->hasOpenedSession()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2257
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$39(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    .line 2266
    :goto_1b
    return-void

    .line 2259
    :cond_1c
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$52(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2260
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 2261
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1b

    .line 2263
    :cond_3e
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1b
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2178
    const-string v0, "WfdsService"

    const-string v1, "STATE: ConnectingWithinGroupState, entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2251
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 2253
    :cond_16
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x5

    .line 2183
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_b2

    .line 2243
    const/4 v0, 0x0

    .line 2245
    :goto_7
    return v0

    .line 2185
    :sswitch_8
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PEEF_CONNECT_USER_ACCEPT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserAccept(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$32(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)Z

    .line 2245
    :goto_14
    const/4 v0, 0x1

    goto :goto_7

    .line 2190
    :sswitch_16
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PEEF_CONNECT_USER_REJECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserReject()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$33(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2192
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_14

    .line 2196
    :sswitch_26
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_ACCEPT_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 2198
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    const/4 v2, 0x3

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_14

    .line 2202
    :sswitch_4b
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_DEF_PIN_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPinWithinGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$36(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2205
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    goto :goto_14

    .line 2209
    :sswitch_61
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_PERSISTENT_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # invokes: Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$53(Lcom/lge/wfds/WfdsService;)V

    goto :goto_14

    .line 2214
    :sswitch_72
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PROV_DISC_FAIL_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 2216
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_14

    .line 2221
    :sswitch_82
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_PD_DEFERRED(RECEIVED)_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$30(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2223
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto :goto_14

    .line 2227
    :sswitch_92
    const-string v0, "WfdsService"

    const-string v1, "ConnectingWithinGroupState: WFDS_SESSION_REQUEST_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->changeState()V

    goto/16 :goto_14

    .line 2233
    :sswitch_9e
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x900021

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_14

    .line 2238
    :sswitch_a8
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_14

    .line 2183
    :sswitch_data_b2
    .sparse-switch
        0x900001 -> :sswitch_9e
        0x900004 -> :sswitch_9e
        0x900005 -> :sswitch_a8
        0x901008 -> :sswitch_82
        0x901009 -> :sswitch_82
        0x901016 -> :sswitch_92
        0x901029 -> :sswitch_8
        0x90102a -> :sswitch_16
        0x902006 -> :sswitch_26
        0x902007 -> :sswitch_72
        0x90200a -> :sswitch_4b
        0x90200d -> :sswitch_61
    .end sparse-switch
.end method
