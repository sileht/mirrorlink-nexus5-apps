.class Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdsStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
    }
.end annotation


# instance fields
.field private mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

.field private mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

.field private mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

.field private mDefaultState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

.field private mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

.field private mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

.field private mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

.field private mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

.field private mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

.field private mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

.field private mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

.field private mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    .line 505
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mDefaultState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

    .line 492
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    .line 493
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    .line 494
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    .line 495
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    .line 496
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    .line 497
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    .line 498
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    .line 499
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    .line 500
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    .line 501
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    .line 502
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    .line 507
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mDefaultState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 508
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mDefaultState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 509
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mDefaultState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 510
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 511
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 512
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 513
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 514
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 515
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 516
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 517
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 518
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mGroupExistedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$GroupExistedState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 519
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 520
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V
    .registers 4

    .prologue
    .line 3038
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 3071
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    .registers 4

    .prologue
    .line 2442
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableSeekService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 2484
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelSeekService(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z
    .registers 5

    .prologue
    .line 2754
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->connectSession(Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2863
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mAutonomousGoState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$AutonomousGoState;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mP2pConnectingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$P2pConnectingState;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 2932
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDisplay(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 2575
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscFailure(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 3029
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$20(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2961
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processPersistentUnknown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2979
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processP2pGroupFormationFailure()V

    return-void
.end method

.method static synthetic access$22(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWifiP2pConnectedState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WifiP2pConnectedState;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 2626
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConnectCapa(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$24(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 2631
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getConnectCapa(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$25(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 2646
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setConfigMethod(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$26(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 2651
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->setListenChannelForTest(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$27(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2993
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V

    return-void
.end method

.method static synthetic access$28(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2667
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->checkDeviceIfP2pServiceKnow()V

    return-void
.end method

.method static synthetic access$29(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 8

    .prologue
    .line 2687
    invoke-direct/range {p0 .. p6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->requestP2pConnection(Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2600
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->handleProvDiscTimeout()V

    return-void
.end method

.method static synthetic access$31(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2620
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V

    return-void
.end method

.method static synthetic access$32(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)Z
    .registers 3

    .prologue
    .line 2515
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserAccept(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2560
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->procPeerConnUserReject()V

    return-void
.end method

.method static synthetic access$34(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mIpObtainingState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$IpObtainingState;

    return-object v0
.end method

.method static synthetic access$35(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2848
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelConnect()V

    return-void
.end method

.method static synthetic access$36(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 1

    .prologue
    .line 2920
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->processProvDiscDefaultPinWithinGroup()V

    return-void
.end method

.method static synthetic access$37(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectingWithinGroupState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectingWithinGroupState;

    return-object v0
.end method

.method static synthetic access$38(Lcom/lge/wfds/WfdsService$WfdsStateMachine;I)V
    .registers 2

    .prologue
    .line 3009
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deletePersistentGroup(I)V

    return-void
.end method

.method static synthetic access$39(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mConnectionCompleteState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ConnectionCompleteState;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$40(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 3091
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getIpAddrOfClient(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsDisabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsDisabledState;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    .registers 4

    .prologue
    .line 2342
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->enableAdvertiseService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 2394
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->cancelAdvertiseService(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$9(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V
    .registers 5

    .prologue
    .line 2419
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->changeServiceStatus(Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V

    return-void
.end method

.method private attachIgnoreAtEventString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAdvertiseService(Landroid/os/Message;I)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2395
    const/4 v0, 0x0

    .line 2396
    .local v0, "isRemoved":Z
    const/4 v1, 0x0

    .line 2397
    .local v1, "isScanAvailable":Z
    const-string v5, "0x%08x"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2398
    .local v2, "strId":Ljava/lang/String;
    const-string v5, "WfdsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Receive the CANCEL_ADVERTISE Method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2401
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 2402
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2405
    :cond_40
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/lge/wfds/WfdsDiscoveryStore;->removeAdvertise(I)Z

    move-result v0

    .line 2406
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v5

    if-nez v5, :cond_62

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 2407
    :cond_62
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/wfds/SessionController;->getPreventAllScan()Z

    move-result v5

    if-nez v5, :cond_94

    move v1, v3

    .line 2408
    :goto_6f
    if-eqz v0, :cond_78

    if-nez v1, :cond_78

    .line 2409
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V
    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$22(Lcom/lge/wfds/WfdsService;I)V

    .line 2411
    :cond_78
    if-eqz v1, :cond_8d

    .line 2412
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    if-eqz v3, :cond_8d

    .line 2413
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    const/16 v4, 0x1b58

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    .line 2416
    :cond_8d
    const v3, 0x900020

    invoke-direct {p0, p1, v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2417
    return-void

    :cond_94
    move v1, v4

    .line 2406
    goto :goto_6f
.end method

.method private cancelConnect()V
    .registers 4

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2850
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine$4;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$4;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2861
    :cond_1c
    return-void
.end method

.method private cancelSeekService(Landroid/os/Message;I)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "id"    # I

    .prologue
    const v4, 0x900020

    const/4 v2, 0x0

    .line 2485
    const/4 v0, 0x0

    .line 2486
    .local v0, "isRemoved":Z
    const/4 v1, 0x0

    .line 2487
    .local v1, "isScanAvailable":Z
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2488
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3f

    .line 2489
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2490
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 2491
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2493
    :cond_3b
    invoke-direct {p0, p1, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2513
    :goto_3e
    return-void

    .line 2496
    :cond_3f
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 2497
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2501
    :cond_50
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/wfds/WfdsDiscoveryStore;->removeSearch(I)Z

    move-result v0

    .line 2502
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 2503
    :cond_72
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/SessionController;->getPreventAllScan()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 2502
    const/4 v1, 0x1

    .line 2504
    :goto_7f
    if-eqz v0, :cond_88

    if-nez v1, :cond_88

    .line 2505
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V
    invoke-static {v3, v2}, Lcom/lge/wfds/WfdsService;->access$22(Lcom/lge/wfds/WfdsService;I)V

    .line 2507
    :cond_88
    if-eqz v1, :cond_9d

    .line 2508
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 2509
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    .line 2512
    :cond_9d
    invoke-direct {p0, p1, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    goto :goto_3e

    :cond_a1
    move v1, v2

    .line 2502
    goto :goto_7f
.end method

.method private changeServiceStatus(Landroid/os/Message;ILcom/lge/wfds/WfdsDiscoveryMethod;I)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "id"    # I
    .param p3, "method"    # Lcom/lge/wfds/WfdsDiscoveryMethod;
    .param p4, "forcedChannel"    # I

    .prologue
    .line 2421
    if-nez p3, :cond_a

    .line 2422
    const-string v0, "WfdsService"

    const-string v1, "SERVICE_STATUS_CHANGE failed because method is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_9
    :goto_9
    return-void

    .line 2426
    :cond_a
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2427
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2429
    :cond_1b
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v0

    .line 2430
    iget-object v1, p3, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceStatus()I

    move-result v1

    .line 2429
    invoke-virtual {v0, p2, v1, p4}, Lcom/lge/wfds/WfdsDiscoveryStore;->changeServiceStatus(III)Z

    move-result v0

    .line 2430
    if-eqz v0, :cond_47

    .line 2431
    const v0, 0x900020

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2436
    :goto_33
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2437
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    goto :goto_9

    .line 2433
    :cond_47
    const v0, 0x90001f

    .line 2434
    const/4 v1, 0x2

    .line 2433
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_33
.end method

.method private checkDeviceIfP2pServiceKnow()V
    .registers 4

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2669
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$2;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 2685
    :cond_1c
    return-void
.end method

.method private connectSession(Landroid/os/Message;Lcom/lge/wfds/WfdsPdMethod;Z)Z
    .registers 14
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "pdMethod"    # Lcom/lge/wfds/WfdsPdMethod;
    .param p3, "isConnectedState"    # Z

    .prologue
    .line 2756
    if-nez p2, :cond_b

    .line 2757
    const-string v0, "WfdsService"

    const-string v1, "connectSession Method: pdMethod is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    const/4 v0, 0x0

    .line 2845
    :goto_a
    return v0

    .line 2763
    :cond_b
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 2765
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-nez v0, :cond_39

    .line 2766
    :cond_30
    const-string v0, "WfdsService"

    const-string v1, "connectSession Method: mPeerDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    const/4 v0, 0x0

    goto :goto_a

    .line 2770
    :cond_39
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$51(Lcom/lge/wfds/WfdsService;Z)V

    .line 2772
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getAdvertiseId()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 2773
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getSessionInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 2774
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getGoRole()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    .line 2778
    iget-object v9, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 2779
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v2

    .line 2780
    const/4 v3, -0x1

    .line 2781
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getAdvertiseId()I

    move-result v4

    .line 2782
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getSessionInfo()Ljava/lang/String;

    move-result-object v5

    .line 2783
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getNetworkConfig()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 2778
    invoke-static {v9, v0}, Lcom/lge/wfds/WfdsService;->access$59(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)V

    .line 2784
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSession;->generateSessionId()I

    .line 2789
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 2790
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2791
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getNetworkConfig()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->selectWpsConfig(I)I

    move-result v8

    .line 2792
    .local v8, "wpsConfig":I
    const/4 v0, 0x4

    if-ne v8, v0, :cond_c2

    .line 2793
    const-string v0, "WfdsService"

    const-string v1, "connectSession Method: wpsConfig is INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 2796
    :cond_c2
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2798
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 2799
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2802
    :cond_dd
    if-nez p3, :cond_102

    .line 2803
    const v0, 0x900026

    .line 2804
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget v1, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 2803
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;IILjava/lang/String;)V

    .line 2805
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsNative;->setUpdateConfig(Z)Z

    .line 2845
    :goto_ff
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 2807
    :cond_102
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->isPostAssociation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 2808
    const/4 v7, 0x0

    .line 2809
    .local v7, "ipAddr":Ljava/net/InetAddress;
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 2810
    invoke-virtual {p2}, Lcom/lge/wfds/WfdsPdMethod;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getIpAddrOfClient(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 2811
    if-eqz v7, :cond_171

    .line 2812
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GO - Client IP : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :goto_13b
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wfds/session/AspSession;->setIpAddress(Ljava/lang/String;)V

    .line 2824
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v0

    const v1, 0x901047

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/wfds/SessionController;->sendMessage(ILjava/lang/Object;)V

    .line 2841
    .end local v7    # "ipAddr":Ljava/net/InetAddress;
    :cond_15a
    const v0, 0x900026

    .line 2842
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget v1, v1, Lcom/lge/wfds/session/AspSession;->session_id:I

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 2841
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;IILjava/lang/String;)V

    goto :goto_ff

    .line 2814
    .restart local v7    # "ipAddr":Ljava/net/InetAddress;
    :cond_171
    const-string v0, "WfdsService"

    const-string v1, "GO - Client IP : Not Available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V

    .line 2816
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 2819
    :cond_17e
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$77(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2820
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client - GO IP : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 2826
    .end local v7    # "ipAddr":Ljava/net/InetAddress;
    :cond_19f
    const/4 v6, 0x1

    .line 2828
    .local v6, "connectionCapa":I
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    if-eqz v0, :cond_1c3

    .line 2829
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$82(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 2830
    const/4 v6, 0x4

    .line 2833
    :cond_1c3
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection Capability is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2836
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget v3, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    iget v4, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 2837
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v5, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    move-object v0, p0

    .line 2835
    invoke-direct/range {v0 .. v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->requestP2pConnection(Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v0

    .line 2837
    if-nez v0, :cond_15a

    .line 2838
    const/4 v0, 0x0

    goto/16 :goto_a
.end method

.method private deletePersistentGroup(I)V
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3023
    :goto_8
    return-void

    .line 3013
    :cond_9
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine$6;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$6;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_8
.end method

.method private dismissAllDialog()V
    .registers 2

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDialog;->dismissUserInputDialog()V

    .line 2622
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDialog;->dismissShowPinDialog()V

    .line 2623
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDialog;->dismissEnterPinDialog()V

    .line 2624
    return-void
.end method

.method private enableAdvertiseService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    .registers 12
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "advMethod"    # Lcom/lge/wfds/WfdsDiscoveryMethod;
    .param p3, "isConnectedState"    # Z

    .prologue
    const v7, 0x900021

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 2344
    const/4 v0, 0x0

    .line 2345
    .local v0, "channel":I
    if-eqz p2, :cond_c

    iget-object v3, p2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-nez v3, :cond_10

    .line 2346
    :cond_c
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 2391
    :cond_f
    :goto_f
    return-void

    .line 2351
    :cond_10
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2359
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 2360
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2363
    :cond_2a
    if-eqz p3, :cond_7a

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 2365
    iget-object v3, p2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 2375
    :cond_45
    :goto_45
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v3

    if-eqz v3, :cond_ac

    .line 2376
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v0

    .line 2380
    :cond_53
    :goto_53
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->requestAdvertise(Lcom/lge/wfds/WfdsDiscoveryMethod;I)I

    move-result v2

    .line 2381
    .local v2, "id":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_bb

    .line 2382
    const v3, 0x900022

    invoke-direct {p0, p1, v3, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 2383
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2384
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v3

    const/16 v4, 0x1b58

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    goto :goto_f

    .line 2367
    .end local v2    # "id":I
    :cond_7a
    if-eqz p3, :cond_45

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2369
    const-wide/16 v4, 0xbb8

    :try_start_92
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_45

    .line 2370
    :catch_96
    move-exception v1

    .line 2371
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "WfdsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Interrupted Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2377
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_ac
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$79(Lcom/lge/wfds/WfdsService;)I

    move-result v3

    if-eqz v3, :cond_53

    .line 2378
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$79(Lcom/lge/wfds/WfdsService;)I

    move-result v0

    goto :goto_53

    .line 2387
    .restart local v2    # "id":I
    :cond_bb
    invoke-direct {p0, p1, v7, v6}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_f
.end method

.method private enableSeekService(Landroid/os/Message;Lcom/lge/wfds/WfdsDiscoveryMethod;Z)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "seekMethod"    # Lcom/lge/wfds/WfdsDiscoveryMethod;
    .param p3, "isConnectedState"    # Z

    .prologue
    const/4 v5, 0x2

    const v4, 0x900021

    .line 2444
    const/4 v0, 0x0

    .line 2445
    .local v0, "channel":I
    if-eqz p2, :cond_b

    iget-object v2, p2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-nez v2, :cond_f

    .line 2446
    :cond_b
    invoke-direct {p0, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->searchTerminated(Landroid/os/Message;II)V

    .line 2481
    :cond_e
    :goto_e
    return-void

    .line 2452
    :cond_f
    if-eqz p3, :cond_2a

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2454
    const/4 v2, 0x6

    .line 2453
    invoke-direct {p0, p1, v4, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->searchTerminated(Landroid/os/Message;II)V

    goto :goto_e

    .line 2458
    :cond_2a
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 2459
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsService$Scanner;->pause()V

    .line 2462
    :cond_3b
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2464
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    if-eqz v2, :cond_7a

    .line 2465
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v0

    .line 2471
    :goto_53
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->requestSearch(Lcom/lge/wfds/WfdsDiscoveryMethod;I)I

    move-result v1

    .line 2472
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_86

    .line 2473
    const v2, 0x900022

    invoke-direct {p0, p1, v2, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 2474
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2475
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-virtual {v2, v3}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    goto :goto_e

    .line 2466
    .end local v1    # "id":I
    :cond_7a
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$79(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    if-eqz v2, :cond_84

    .line 2467
    const/4 v0, 0x0

    .line 2468
    goto :goto_53

    .line 2469
    :cond_84
    const/4 v0, 0x6

    goto :goto_53

    .line 2478
    .restart local v1    # "id":I
    :cond_86
    invoke-direct {p0, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_e
.end method

.method private getConnectCapa(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2634
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2635
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2636
    const/4 v0, 0x1

    .line 2640
    .local v0, "id":I
    :goto_15
    const v1, 0x900022

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 2644
    .end local v0    # "id":I
    :goto_1b
    return-void

    .line 2638
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "id":I
    goto :goto_15

    .line 2642
    .end local v0    # "id":I
    :cond_1e
    const v1, 0x900021

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1b
.end method

.method private getIpAddrOfClient(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3092
    const/4 v0, 0x0

    .line 3093
    .local v0, "ipAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3094
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    if-nez v1, :cond_24

    .line 3095
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/wfds/WfdsPeerList;->getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V

    .line 3097
    :cond_24
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 3098
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v1, :cond_5b

    .line 3099
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$78(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 3100
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$78(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iget-object v2, v2, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wfds/DhcpFileObserver;->getPeerIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3111
    :cond_52
    :goto_52
    return-object v0

    .line 3102
    :cond_53
    const-string v1, "WfdsService"

    const-string v2, "getIpAddrOfClient : mDhcpFileObserver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 3105
    :cond_5b
    const-string v1, "WfdsService"

    const-string v2, "getIpAddrOfClient : mPeerDevice.wfdsInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 3108
    :cond_63
    const-string v1, "WfdsService"

    const-string v2, "getIpAddrOfClient : mPeerDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private handleProvDiscFailure(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2576
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2577
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Ljava/lang/String;)V

    .line 2578
    .local v0, "wfdsPdFail":Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;
    if-eqz v0, :cond_19

    iget v1, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I

    if-gez v1, :cond_1a

    .line 2598
    :cond_19
    :goto_19
    return-void

    .line 2581
    :cond_1a
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WFDS_PROV_DISC_FAIL_EVENT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->peerAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 2584
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 2585
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->p2pFlush()Z

    .line 2586
    iget v1, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6c

    .line 2588
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 2589
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x4

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_19

    .line 2590
    :cond_6c
    iget v1, v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsProvDiscFailData;->reason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7d

    .line 2592
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2593
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->removeGroup()V

    goto :goto_19

    .line 2596
    :cond_7d
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_19
.end method

.method private handleProvDiscTimeout()V
    .registers 5

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2602
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2603
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 2618
    :cond_1e
    :goto_1e
    return-void

    .line 2607
    :cond_1f
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2608
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    if-ne v0, v1, :cond_6d

    .line 2609
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->provisionTimeoutOccurred(Ljava/lang/String;)Z

    .line 2613
    :goto_48
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 2614
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 2615
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->p2pFlush()Z

    .line 2616
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    .line 2617
    const/4 v3, 0x5

    .line 2616
    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    goto :goto_1e

    .line 2611
    :cond_6d
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V

    goto :goto_48
.end method

.method private isPostAssociation(Ljava/lang/String;)Z
    .registers 6
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2711
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_2b

    if-eqz p1, :cond_2b

    .line 2712
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2713
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2714
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2727
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2

    .line 2715
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2716
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_2c

    .line 2721
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    :cond_3c
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 3082
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3083
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3084
    return-object v0
.end method

.method private procPeerConnUserAccept(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 2516
    const/4 v0, 0x0

    .line 2517
    .local v0, "changeState":Z
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 2519
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    if-nez v3, :cond_11

    move v1, v0

    .line 2557
    .end local v0    # "changeState":Z
    .local v1, "changeState":I
    :goto_10
    return v1

    .line 2523
    .end local v1    # "changeState":I
    .restart local v0    # "changeState":Z
    :cond_11
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v3, v3, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_55

    .line 2524
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$62(Lcom/lge/wfds/WfdsService;)V

    .line 2525
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2526
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2525
    invoke-virtual {v3, v6, v4, v5}, Lcom/lge/wfds/WfdsNative;->confirmService(ZLjava/lang/String;I)Z

    move-result v3

    .line 2526
    if-eqz v3, :cond_4d

    .line 2527
    const-string v3, "WfdsService"

    const-string v4, "ConfirmService (User Accept) is succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V

    move v1, v0

    .line 2557
    .restart local v1    # "changeState":I
    goto :goto_10

    .line 2529
    .end local v1    # "changeState":I
    :cond_4d
    const-string v3, "WfdsService"

    const-string v4, "ConfirmService (User Accept) is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 2531
    :cond_55
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v3, v3, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    .line 2532
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_74

    .line 2533
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v4, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 2536
    :cond_74
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$80(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d4

    .line 2539
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsNative;->deviceAuth(Landroid/net/wifi/p2p/WifiP2pConfigEx;)Ljava/lang/String;

    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$80(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v4, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2541
    .local v2, "eventString":Ljava/lang/String;
    const-string v3, "WfdsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "User input the pin: Event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 2543
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$65(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 2544
    const/4 v0, 0x1

    .line 2545
    goto/16 :goto_48

    .line 2546
    .end local v2    # "eventString":Ljava/lang/String;
    :cond_d4
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$62(Lcom/lge/wfds/WfdsService;)V

    .line 2547
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2548
    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v5, v5, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2547
    invoke-virtual {v3, v6, v4, v5}, Lcom/lge/wfds/WfdsNative;->confirmService(ZLjava/lang/String;I)Z

    move-result v3

    .line 2548
    if-eqz v3, :cond_100

    .line 2549
    const-string v3, "WfdsService"

    const-string v4, "ConfirmService is succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 2551
    :cond_100
    const-string v3, "WfdsService"

    const-string v4, "ConfirmService is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48
.end method

.method private procPeerConnUserReject()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2561
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$66(Lcom/lge/wfds/WfdsService;)V

    .line 2562
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2573
    :goto_e
    return-void

    .line 2566
    :cond_f
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/lge/wfds/WfdsNative;->confirmService(ZLjava/lang/String;I)Z

    .line 2567
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    .line 2568
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsNative;->p2pFlush()Z

    .line 2569
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/wfds/WfdsNative;->p2pFind(Z)Z

    .line 2570
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    const/4 v2, 0x4

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v0, v1, v2}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 2572
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->dismissAllDialog()V

    goto :goto_e
.end method

.method private processP2pGroupFormationFailure()V
    .registers 5

    .prologue
    .line 2980
    const-string v1, "WfdsService"

    const-string v2, "GO Negotiation / Group Formation Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsNative;->clearPdInformation()Ljava/lang/String;

    move-result-object v0

    .line 2982
    .local v0, "peerAddr":Ljava/lang/String;
    if-eqz v0, :cond_4f

    invoke-static {v0}, Lcom/lge/wfds/WfdsUtility;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2983
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 2984
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Group Formation failure with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2986
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    const/4 v3, 0x7

    # invokes: Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/WfdsService;->access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V

    .line 2991
    :cond_4f
    :goto_4f
    return-void

    .line 2988
    :cond_50
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "peerAddr is not equals with ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method private processPersistentUnknown(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 2962
    if-nez p1, :cond_3

    .line 2977
    :cond_2
    :goto_2
    return-void

    .line 2966
    :cond_3
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2967
    .local v0, "strTokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 2971
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 2972
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 2973
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2976
    :cond_2a
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsPersistentUnknownGroupBroadcast(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/lge/wfds/WfdsService;->access$83(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private processProvDiscDefaultPin(Ljava/lang/String;)V
    .registers 10
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2864
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2865
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    if-eq v0, v3, :cond_14

    .line 2866
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    if-eq v0, v3, :cond_14

    .line 2867
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    if-eq v0, v3, :cond_14

    .line 2868
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    .line 2871
    :cond_14
    const-string v3, "WfdsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processProvDiscDefaultPin currentState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 2875
    .local v2, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-boolean v3, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->go:Z

    if-eqz v3, :cond_74

    .line 2876
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 2877
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$82(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 2878
    :cond_57
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v3, v6}, Lcom/lge/wfds/WfdsService;->access$76(Lcom/lge/wfds/WfdsService;Z)V

    .line 2879
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    if-ne v0, v3, :cond_6a

    .line 2880
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->attachIgnoreAtEventString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2881
    .local v1, "ignoreEventStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    .line 2917
    .end local v1    # "ignoreEventStr":Ljava/lang/String;
    :cond_69
    :goto_69
    return-void

    .line 2885
    :cond_6a
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    goto :goto_69

    .line 2886
    :cond_74
    iget-boolean v3, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->join:Z

    if-eqz v3, :cond_8c

    .line 2887
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v3, v7}, Lcom/lge/wfds/WfdsService;->access$76(Lcom/lge/wfds/WfdsService;Z)V

    .line 2888
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2889
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v3, p1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto :goto_69

    .line 2891
    :cond_8c
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    if-nez v3, :cond_9e

    .line 2892
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v3, v4}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 2894
    :cond_9e
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2895
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x5

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2896
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    const-string v4, "12345670"

    iput-object v4, v3, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 2897
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v3, v7}, Lcom/lge/wfds/WfdsService;->access$76(Lcom/lge/wfds/WfdsService;Z)V

    .line 2899
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mWfdsEnabledState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$WfdsEnabledState;

    if-eq v0, v3, :cond_d6

    .line 2900
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    if-ne v0, v3, :cond_e5

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 2905
    :cond_d6
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v3, v7}, Lcom/lge/wfds/WfdsService;->access$36(Lcom/lge/wfds/WfdsService;Z)V

    .line 2907
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->attachIgnoreAtEventString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2908
    .restart local v1    # "ignoreEventStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto :goto_69

    .line 2909
    .end local v1    # "ignoreEventStr":Ljava/lang/String;
    :cond_e5
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionDeferredState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionDeferredState;

    if-eq v0, v3, :cond_f5

    .line 2910
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->mProvisionState:Lcom/lge/wfds/WfdsService$WfdsStateMachine$ProvisionState;

    if-ne v0, v3, :cond_69

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2911
    :cond_f5
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 2912
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/wfds/WfdsNative;->deviceAuth(Landroid/net/wifi/p2p/WifiP2pConfigEx;)Ljava/lang/String;

    .line 2913
    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v3, p1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    goto/16 :goto_69
.end method

.method private processProvDiscDefaultPinWithinGroup()V
    .registers 4

    .prologue
    .line 2921
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    if-nez v1, :cond_9

    .line 2930
    :goto_8
    return-void

    .line 2924
    :cond_9
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2926
    .local v0, "isSeeker":Z
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-nez v1, :cond_25

    if-nez v0, :cond_2f

    :cond_25
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPdDeferred:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$68(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-nez v0, :cond_34

    .line 2927
    :cond_2f
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$54(Lcom/lge/wfds/WfdsService;)V

    .line 2929
    :cond_34
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    goto :goto_8
.end method

.method private processProvDiscDisplay(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "needShowDialog"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2933
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;-><init>(Ljava/lang/String;)V

    .line 2935
    .local v1, "provDisc":Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    if-nez v4, :cond_19

    .line 2936
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsService;->access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V

    .line 2938
    :cond_19
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v5, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2939
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v4, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2940
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEventEx;->pin:Ljava/lang/String;

    iput-object v5, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 2943
    :try_start_3b
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v5, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/wfds/WfdsService;->access$37(Lcom/lge/wfds/WfdsService;I)V

    .line 2944
    const-string v4, "WfdsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Display Pin Number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mDisplayPin:I
    invoke-static {v6}, Lcom/lge/wfds/WfdsService;->access$58(Lcom/lge/wfds/WfdsService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_68} :catch_91

    .line 2950
    :goto_68
    if-eqz p2, :cond_8a

    .line 2951
    if-eqz p2, :cond_90

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v5}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 2952
    iget-object v6, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-static {v6}, Lcom/lge/wfds/WfdsService;->access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v6, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 2951
    invoke-virtual {v4, v5, v6}, Lcom/lge/wfds/WfdsDialog;->showProvDiscShowPinDialog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 2952
    if-eqz v4, :cond_90

    .line 2954
    :cond_8a
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/lge/wfds/WfdsService;->access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    move v2, v3

    .line 2958
    :cond_90
    return v2

    .line 2945
    :catch_91
    move-exception v0

    .line 2946
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v4, v2}, Lcom/lge/wfds/WfdsService;->access$37(Lcom/lge/wfds/WfdsService;I)V

    .line 2947
    const-string v4, "WfdsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NumberFormatException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method private removeGroup()V
    .registers 4

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3007
    :goto_8
    return-void

    .line 2997
    :cond_9
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine$5;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$5;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_8
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 3030
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 3036
    :goto_4
    return-void

    .line 3033
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3034
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3035
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$84(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 3039
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 3046
    :goto_4
    return-void

    .line 3042
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3043
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3044
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3045
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$84(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;IILjava/lang/String;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "mac"    # Ljava/lang/String;

    .prologue
    .line 3061
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 3069
    :goto_4
    return-void

    .line 3064
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3065
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3066
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3067
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$84(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/String;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "sValue"    # Ljava/lang/String;

    .prologue
    .line 3072
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 3079
    :goto_4
    return-void

    .line 3075
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 3076
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3077
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$84(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private requestP2pConnection(Landroid/net/wifi/p2p/WifiP2pConfigEx;Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 13
    .param p1, "peerConfigEx"    # Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .param p2, "deviceAddr"    # Ljava/lang/String;
    .param p3, "advId"    # I
    .param p4, "sessionId"    # I
    .param p5, "sessionInfo"    # Ljava/lang/String;
    .param p6, "capa"    # I

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wfds/WfdsNative;->requestService(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2691
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 2692
    new-instance v2, Lcom/lge/wfds/WfdsService$WfdsStateMachine$3;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$3;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2691
    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2707
    const/4 v0, 0x1

    :goto_26
    return v0

    .line 2705
    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private searchTerminated(Landroid/os/Message;II)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "event"    # I
    .param p3, "reason"    # I

    .prologue
    .line 3026
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V

    .line 3027
    return-void
.end method

.method private selectWpsConfig(I)I
    .registers 8
    .param p1, "networkConfig"    # I

    .prologue
    const/4 v5, 0x2

    .line 2731
    const/4 v1, 0x4

    .line 2733
    .local v1, "wpsConfig":I
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createPeerConfigEx: Network Config value = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    if-ne p1, v5, :cond_47

    .line 2736
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsNative;->getConfigMethod()I

    move-result v0

    .line 2737
    .local v0, "configMethod":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3b

    .line 2738
    const/4 v1, 0x1

    .line 2749
    .end local v0    # "configMethod":I
    :goto_26
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Config Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    return v1

    .line 2739
    .restart local v0    # "configMethod":I
    :cond_3b
    if-ne v0, v5, :cond_3f

    .line 2740
    const/4 v1, 0x2

    .line 2741
    goto :goto_26

    .line 2743
    :cond_3f
    const-string v2, "WfdsService"

    const-string v3, "Config Method: INVALID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2746
    .end local v0    # "configMethod":I
    :cond_47
    const/4 v1, 0x5

    goto :goto_26
.end method

.method private setConfigMethod(Landroid/os/Message;I)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "configMethod"    # I

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/wfds/WfdsNative;->setConfigMethod(I)Z

    .line 2648
    const v0, 0x900020

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2649
    return-void
.end method

.method private setConnectCapa(Landroid/os/Message;I)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "id"    # I

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/wfds/WfdsNative;->setConnectionCapability(I)Z

    .line 2628
    const v0, 0x900020

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2629
    return-void
.end method

.method private setListenChannelForTest(Landroid/os/Message;I)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "listenChn"    # I

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    invoke-static {v0, p2}, Lcom/lge/wfds/WfdsService;->access$81(Lcom/lge/wfds/WfdsService;I)V

    .line 2653
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$79(Lcom/lge/wfds/WfdsService;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$79(Lcom/lge/wfds/WfdsService;)I

    move-result v3

    .line 2654
    new-instance v4, Lcom/lge/wfds/WfdsService$WfdsStateMachine$1;

    invoke-direct {v4, p0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine$1;-><init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V

    .line 2653
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2664
    const v0, 0x900020

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V

    .line 2665
    return-void
.end method
