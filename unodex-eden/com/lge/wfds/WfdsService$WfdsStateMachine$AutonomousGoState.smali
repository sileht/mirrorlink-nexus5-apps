.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutonomousGoState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1926
    const-string v0, "WfdsService"

    const-string v1, "STATE: AutonomousGoState, entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    # getter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$73(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1928
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v1, 0x90100d

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 1930
    :cond_1b
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 1962
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 1934
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_78

    .line 1957
    :goto_7
    return v0

    .line 1936
    :sswitch_8
    const-string v1, "WfdsService"

    const-string v2, "AutonomousGoState: WFDS_PEER_CONNECT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$74(Lcom/lge/wfds/WfdsService;I)V

    goto :goto_7

    .line 1942
    :sswitch_27
    const-string v1, "WfdsService"

    const-string v2, "AutonomousGoState: WFDS_SESSION_REQUEST_DISCONNECT or WFDS_REMOVE_AUTONOMOUS_GROUP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$73(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 1945
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$75(Lcom/lge/wfds/WfdsService;)I

    move-result v1

    if-eq v1, v3, :cond_55

    .line 1946
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$75(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deletePersistentGroup(I)V
    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$38(Lcom/lge/wfds/WfdsService$WfdsStateMachine;I)V

    .line 1948
    :cond_55
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$72(Lcom/lge/wfds/WfdsService;Z)V

    .line 1949
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$76(Lcom/lge/wfds/WfdsService;Z)V

    .line 1950
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/wfds/WfdsService;->access$74(Lcom/lge/wfds/WfdsService;I)V

    .line 1951
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 1957
    const/4 v0, 0x1

    goto :goto_7

    .line 1934
    nop

    :sswitch_data_78
    .sparse-switch
        0x901006 -> :sswitch_8
        0x90100d -> :sswitch_27
        0x901016 -> :sswitch_27
    .end sparse-switch
.end method
