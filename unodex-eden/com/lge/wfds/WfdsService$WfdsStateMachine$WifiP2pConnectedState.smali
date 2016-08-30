.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiP2pConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private procWfdsSvcReq(Landroid/os/Message;)V
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$5(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V

    .line 1147
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1148
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1121
    const-string v0, "WfdsService"

    const-string v1, "STATE : WifiP2pConnectedState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 1152
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1126
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_32

    .line 1140
    const/4 v0, 0x0

    .line 1142
    :goto_6
    return v0

    .line 1128
    :sswitch_7
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : CMD_ADVERTISE_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->procWfdsSvcReq(Landroid/os/Message;)V

    .line 1142
    :goto_11
    const/4 v0, 0x1

    goto :goto_6

    .line 1132
    :sswitch_13
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : CMD_SEEK_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->procWfdsSvcReq(Landroid/os/Message;)V

    goto :goto_11

    .line 1136
    :sswitch_1e
    const-string v0, "WfdsService"

    const-string v1, "WifiP2pConnectedState : WIFI_P2P_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    move-result-object v1

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_11

    .line 1126
    nop

    :sswitch_data_32
    .sparse-switch
        0x900001 -> :sswitch_7
        0x900004 -> :sswitch_13
        0x901005 -> :sswitch_1e
    .end sparse-switch
.end method
