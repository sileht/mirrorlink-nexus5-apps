.class public Lcom/lge/wfds/SessionController;
.super Lcom/android/internal/util/StateMachine;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/SessionController$DefaultState;,
        Lcom/lge/wfds/SessionController$SessionClosedState;,
        Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;,
        Lcom/lge/wfds/SessionController$SessionDeferredState;,
        Lcom/lge/wfds/SessionController$SessionOpenedState;,
        Lcom/lge/wfds/SessionController$SessionOpeningState;,
        Lcom/lge/wfds/SessionController$SessionReadyState;
    }
.end annotation


# static fields
.field public static final ASP_ACK_ADDED_SESSION_RECEIVED:I = 0x901063

.field public static final ASP_ACK_UNKNOWN_RECEIVED:I = 0x901065

.field public static final ASP_ACK_VERSION_RECEIVED:I = 0x901064

.field public static final ASP_ADDED_SESSION_RECEIVED:I = 0x90105e

.field public static final ASP_ALLOWED_PORT_RECEIVED:I = 0x901061

.field public static final ASP_DEFERRED_SESSION_RECEIVED:I = 0x901062

.field public static final ASP_REJECTED_SESSION_RECEIVED:I = 0x90105f

.field public static final ASP_REMOVE_SESSION_RECEIVED:I = 0x901060

.field public static final ASP_REQUEST_SESSION_RECEIVED:I = 0x90105d

.field public static final ASP_SESSION_OPEN_FAILED:I = 0x90105b

.field public static final ASP_VERSION_RECEIVED:I = 0x90105c

.field private static final BASE:I = 0x901032

.field private static final CMD_REQUEST_SESSION:I = 0x901033

.field private static final CMD_SESSION_COUNT_ZERO_TIMEOUT:I = 0x901037

.field private static final CMD_SESSION_DEFERRED_TIMEOUT:I = 0x901038

.field private static final CMD_SESSION_OPEN_FAILED_TIMEOUT:I = 0x901036

.field private static final CMD_VERSION:I = 0x901034

.field private static final CMD_VERSION_EXCHANGED:I = 0x901035

.field public static final EVT_P2P_DISABLED:I = 0x90104b

.field public static final EVT_P2P_DISCONNECTED:I = 0x901049

.field public static final EVT_P2P_GROUP_INFO_AVLBL:I = 0x90104a

.field public static final EVT_P2P_GROUP_REMOVED:I = 0x901048

.field public static final EVT_REQUEST_OPEN_SESSION:I = 0x901047

.field private static final SESSION_AFTER_COUNT_ZERO_TIME:I = 0xea60

.field private static final SESSION_AFTER_COUNT_ZERO_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

.field private static final SESSION_AFTER_OPEN_FAILED_TIME:I = 0x2710

.field private static final SESSION_AFTER_OPEN_FAILED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

.field private static final SESSION_DEFERRED_TIME:I = 0x1d4c0

.field private static final SESSION_DEFERRED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.session.DEFERRED_TIMEOUT"

.field private static final TAG:Ljava/lang/String; = "WfdsSession:Controller"


# instance fields
.field private bVersionReceived:Z

.field private bVersionSent:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/lge/wfds/SessionController$DefaultState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mIsCertificationMode:Z

.field private mPortIsolation:Lcom/lge/wfds/session/PortIsolation;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreventScan:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRequestedSession:Lcom/lge/wfds/session/AspSession;

.field private mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;

.field private mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

.field private mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

.field private mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;

.field private mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

.field private mSessionList:Lcom/lge/wfds/session/AspSessionList;

.field private mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

.field private mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;

.field private mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;

.field private mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

.field private mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

.field private mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

.field private mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lge/wfds/WfdsNative;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsDiscoveryStore;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfdsNative"    # Lcom/lge/wfds/WfdsNative;
    .param p3, "wfdsEvent"    # Lcom/lge/wfds/WfdsEvent;
    .param p4, "wfdsDiscoveryStore"    # Lcom/lge/wfds/WfdsDiscoveryStore;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    const-string v0, "WfdsSession:Controller"

    invoke-direct {p0, v0, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 38
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 39
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mPowerManager:Landroid/os/PowerManager;

    .line 41
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 42
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 43
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 44
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    .line 45
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 46
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;

    .line 47
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    .line 48
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 49
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 53
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

    .line 54
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    .line 55
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 56
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 59
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    .line 61
    iput-boolean v2, p0, Lcom/lge/wfds/SessionController;->bVersionReceived:Z

    .line 62
    iput-boolean v2, p0, Lcom/lge/wfds/SessionController;->bVersionSent:Z

    .line 63
    iput-boolean v2, p0, Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z

    .line 64
    iput-boolean v2, p0, Lcom/lge/wfds/SessionController;->mPreventScan:Z

    .line 66
    new-instance v0, Lcom/lge/wfds/SessionController$DefaultState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$DefaultState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mDefaultState:Lcom/lge/wfds/SessionController$DefaultState;

    .line 67
    new-instance v0, Lcom/lge/wfds/SessionController$SessionClosedState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$SessionClosedState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;

    .line 68
    new-instance v0, Lcom/lge/wfds/SessionController$SessionReadyState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$SessionReadyState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    .line 69
    new-instance v0, Lcom/lge/wfds/SessionController$SessionDeferredState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$SessionDeferredState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;

    .line 70
    new-instance v0, Lcom/lge/wfds/SessionController$SessionOpeningState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$SessionOpeningState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;

    .line 71
    new-instance v0, Lcom/lge/wfds/SessionController$SessionOpenedState;

    invoke-direct {v0, p0}, Lcom/lge/wfds/SessionController$SessionOpenedState;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;

    .line 124
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/lge/wfds/SessionController;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 126
    iput-object p3, p0, Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 127
    iput-object p4, p0, Lcom/lge/wfds/SessionController;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    .line 129
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 130
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_92

    .line 131
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "WfdsAsp"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 132
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_92

    .line 133
    const-string v0, "WfdsSession:Controller"

    const-string v1, "Wifi Multicast Lock is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_92
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mPowerManager:Landroid/os/PowerManager;

    .line 138
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_b7

    .line 139
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "WfdsAsp"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 140
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b7

    .line 141
    const-string v0, "WfdsSession:Controller"

    const-string v1, "Wake Lock is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_b7
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 146
    new-instance v0, Lcom/lge/wfds/session/AspSessionList;

    const-string v1, "WfdsSession:List"

    invoke-direct {v0, v1, v3}, Lcom/lge/wfds/session/AspSessionList;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    .line 147
    new-instance v0, Lcom/lge/wfds/session/PortIsolation;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-direct {v0, v1}, Lcom/lge/wfds/session/PortIsolation;-><init>(Lcom/lge/wfds/session/AspSessionList;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;

    .line 148
    new-instance v0, Lcom/lge/wfds/session/UdpDataManager;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/session/UdpDataManager;-><init>(Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/session/AspSessionList;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    .line 149
    new-instance v0, Lcom/lge/wfds/WfdsDialog;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lge/wfds/WfdsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;)V

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 151
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->registerSessionCtrlBroadcastRcvr()V

    .line 153
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mDefaultState:Lcom/lge/wfds/SessionController$DefaultState;

    invoke-virtual {p0, v0}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;)V

    .line 154
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mDefaultState:Lcom/lge/wfds/SessionController$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 155
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mDefaultState:Lcom/lge/wfds/SessionController$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 156
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 157
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 158
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wfds/SessionController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 160
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;

    invoke-virtual {p0, v0}, Lcom/lge/wfds/SessionController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 161
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/SessionController;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/SessionController;Landroid/os/Message;I)V
    .registers 3

    .prologue
    .line 1000
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpeningState;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpeningState:Lcom/lge/wfds/SessionController$SessionOpeningState;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lge/wfds/SessionController;Lcom/android/internal/util/IState;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/SessionController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13(Lcom/lge/wfds/SessionController;I)V
    .registers 2

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/lge/wfds/SessionController;)Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z

    return v0
.end method

.method static synthetic access$15(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4

    .prologue
    .line 1112
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$17(Lcom/lge/wfds/SessionController;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->isKnownService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/lge/wfds/SessionController;)V
    .registers 1

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->sendRequestSession()V

    return-void
.end method

.method static synthetic access$19(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/SessionController;)V
    .registers 1

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V

    return-void
.end method

.method static synthetic access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z
    .registers 4

    .prologue
    .line 1019
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/lge/wfds/SessionController;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 1101
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/SessionController;->removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$22(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;II)V
    .registers 4

    .prologue
    .line 1035
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/SessionController;->sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V

    return-void
.end method

.method static synthetic access$23(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionReadyState;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionReadyState:Lcom/lge/wfds/SessionController$SessionReadyState;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionOpenedState;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpenedState:Lcom/lge/wfds/SessionController$SessionOpenedState;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionClosedState;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionClosedState:Lcom/lge/wfds/SessionController$SessionClosedState;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lge/wfds/SessionController;Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V
    .registers 4

    .prologue
    .line 1009
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wfds/SessionController;->replyToMessage(Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V

    return-void
.end method

.method static synthetic access$27(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/SessionController$SessionDeferredState;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredState:Lcom/lge/wfds/SessionController$SessionDeferredState;

    return-object v0
.end method

.method static synthetic access$29(Lcom/lge/wfds/SessionController;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/wfds/SessionController;Lcom/lge/wfds/session/AspSession;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    return-void
.end method

.method static synthetic access$30(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDiscoveryStore;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    return-object v0
.end method

.method static synthetic access$31(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsDialog;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/WfdsEvent;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    return-object v0
.end method

.method static synthetic access$33(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$34(Lcom/lge/wfds/SessionController;Z)V
    .registers 2

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->setP2pPowerSave(Z)V

    return-void
.end method

.method static synthetic access$35(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object v0
.end method

.method static synthetic access$36(Lcom/lge/wfds/SessionController;Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/wfds/SessionController;->bVersionReceived:Z

    return-void
.end method

.method static synthetic access$37(Lcom/lge/wfds/SessionController;Z)V
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/lge/wfds/SessionController;->bVersionSent:Z

    return-void
.end method

.method static synthetic access$38(Lcom/lge/wfds/SessionController;)Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/wfds/SessionController;->bVersionReceived:Z

    return v0
.end method

.method static synthetic access$39(Lcom/lge/wfds/SessionController;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lge/wfds/SessionController;->bVersionSent:Z

    return v0
.end method

.method static synthetic access$4(Lcom/lge/wfds/SessionController;)V
    .registers 1

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V

    return-void
.end method

.method static synthetic access$40(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$41(Lcom/lge/wfds/SessionController;Z)V
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/lge/wfds/SessionController;->mPreventScan:Z

    return-void
.end method

.method static synthetic access$42(Lcom/lge/wfds/SessionController;I)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/SessionController;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/wfds/SessionController;)V
    .registers 1

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->stopDeferredTimeout()V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/wfds/SessionController;)V
    .registers 1

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/lge/wfds/SessionController;->printSessionListInfo()V

    return-void
.end method

.method static synthetic access$9(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    return-object v0
.end method

.method private isKnownService(Ljava/lang/String;)Z
    .registers 4
    .param p1, "service_mac"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 1049
    .local v0, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    return v1
.end method

.method private obtainDstMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 996
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 997
    return-object v0
.end method

.method private printSessionListInfo()V
    .registers 8

    .prologue
    .line 1053
    iget-object v4, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    if-nez v4, :cond_c

    .line 1054
    const-string v4, "WfdsSession:Controller"

    const-string v5, "mSessionList is not created yet !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :goto_b
    return-void

    .line 1056
    :cond_c
    const-string v4, "WfdsSession:Controller"

    const-string v5, "========================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v4, "WfdsSession:Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SessionMap Size :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v6}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v4, "WfdsSession:Controller"

    const-string v5, "------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, 0x1

    .line 1061
    .local v0, "idx":I
    iget-object v4, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v4}, Lcom/lge/wfds/session/AspSessionList;->getSessionList()Ljava/util/Iterator;

    move-result-object v3

    .line 1062
    .local v3, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_49

    .line 1067
    const-string v4, "WfdsSession:Controller"

    const-string v5, "========================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1063
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wfds/session/AspSession;

    .line 1064
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    const-string v4, "WfdsSession:Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v4, "WfdsSession:Controller"

    invoke-direct {p0, v2}, Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_3b
.end method

.method private registerSessionCtrlBroadcastRcvr()V
    .registers 4

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_27

    .line 1152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1154
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1155
    const-string v1, "com.lge.wfds.session.COUNT_ZERO_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string v1, "com.lge.wfds.session.DEFERRED_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    new-instance v1, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;

    invoke-direct {v1, p0}, Lcom/lge/wfds/SessionController$SessionCtrlBroadcastRcvr;-><init>(Lcom/lge/wfds/SessionController;)V

    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    .line 1159
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1163
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :goto_26
    return-void

    .line 1161
    :cond_27
    const-string v1, "WfdsSession:Controller"

    const-string v2, "registerSessionCtrlBroadcastRcvr: already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private removePortIsolation(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "session_mac"    # Ljava/lang/String;
    .param p2, "session_id"    # Ljava/lang/Integer;

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/PortIsolation;->disable(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 1001
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 1007
    :goto_4
    return-void

    .line 1004
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->obtainDstMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1006
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;ILcom/lge/wfds/session/AspSession;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "aspSession"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 1010
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    .line 1017
    :goto_4
    return-void

    .line 1013
    :cond_5
    invoke-direct {p0, p1}, Lcom/lge/wfds/SessionController;->obtainDstMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1014
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1015
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1016
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private sendMessageToWfdsSM(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1093
    :cond_9
    return-void
.end method

.method private sendMessageToWfdsSM(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v0, :cond_9

    .line 1097
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1099
    :cond_9
    return-void
.end method

.method private sendRequestSession()V
    .registers 7

    .prologue
    .line 979
    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    if-eqz v2, :cond_52

    .line 980
    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    iget-object v3, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 981
    .local v1, "sSession":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_52

    iget-object v2, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 982
    iget-object v2, v1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 983
    const-string v2, "WfdsSession:Controller"

    const-string v3, "SEEKER : Send REQUEST_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v2, "WfdsSession:Controller"

    invoke-direct {p0, v1}, Lcom/lge/wfds/SessionController;->sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x901033

    iput v2, v0, Landroid/os/Message;->what:I

    .line 987
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 988
    invoke-virtual {p0, v0}, Lcom/lge/wfds/SessionController;->sendMessage(Landroid/os/Message;)V

    .line 989
    const v2, 0x90105b

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v2, v4, v5}, Lcom/lge/wfds/SessionController;->sendMessageDelayed(IJ)V

    .line 992
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "sSession":Lcom/lge/wfds/session/AspSession;
    :cond_52
    return-void
.end method

.method private sendSessionStatus(Lcom/lge/wfds/session/AspSession;II)V
    .registers 7
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p2, "state"    # I
    .param p3, "status"    # I

    .prologue
    .line 1036
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    if-nez v2, :cond_7

    .line 1045
    :cond_6
    :goto_6
    return-void

    .line 1040
    :cond_7
    iget v0, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 1041
    .local v0, "sessionId":I
    iget-object v1, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 1043
    .local v1, "sessionMac":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/lge/wfds/session/AspSession;->setState(I)V

    .line 1044
    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    invoke-virtual {v2, v1, v0, p2, p3}, Lcom/lge/wfds/WfdsEvent;->notifySessionStatusToService(Ljava/lang/String;III)V

    goto :goto_6
.end method

.method private sessionToString(Lcom/lge/wfds/session/AspSession;)Ljava/lang/String;
    .registers 5
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1073
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    if-eqz p1, :cond_19

    .line 1075
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/wfds/session/AspSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    :cond_19
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setP2pPowerSave(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1083
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    if-eqz v0, :cond_1b

    .line 1084
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lge/wfds/WfdsNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    .line 1087
    :cond_1b
    return-void
.end method

.method private startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    .registers 5
    .param p1, "req_type"    # I
    .param p2, "session"    # Lcom/lge/wfds/session/AspSession;

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    monitor-enter v1

    .line 1021
    :try_start_3
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wfds/session/UdpDataManager;->startRequest(ILcom/lge/wfds/session/AspSession;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1022
    monitor-exit v1

    const/4 v0, 0x1

    .line 1026
    :goto_d
    return v0

    .line 1020
    :cond_e
    monitor-exit v1

    .line 1026
    const/4 v0, 0x0

    goto :goto_d

    .line 1020
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 12
    .param p1, "timeoutAction"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/4 v8, 0x0

    .line 1113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v1, "timeoutIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1116
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_42

    .line 1117
    const-string v4, "WfdsSession:Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startTimeout : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v2, v4, v6

    .line 1119
    .local v2, "triggerTime":J
    iget-object v4, p0, Lcom/lge/wfds/SessionController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v8, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1122
    .end local v2    # "triggerTime":J
    :cond_42
    return-object v0
.end method

.method private stopAspSessionRequest()V
    .registers 3

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    monitor-enter v1

    .line 1031
    :try_start_3
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;

    invoke-virtual {v0}, Lcom/lge/wfds/session/UdpDataManager;->stopRequest()V

    .line 1030
    monitor-exit v1

    .line 1033
    return-void

    .line 1030
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private stopDeferredTimeout()V
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 1145
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/lge/wfds/SessionController;->stopTimeout(Landroid/app/PendingIntent;)V

    .line 1146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 1148
    :cond_c
    return-void
.end method

.method private stopSessionReadyTimeouts()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1133
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 1134
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/lge/wfds/SessionController;->stopTimeout(Landroid/app/PendingIntent;)V

    .line 1135
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionOpenFailedTimeoutIntent:Landroid/app/PendingIntent;

    .line 1137
    :cond_c
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_17

    .line 1138
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/lge/wfds/SessionController;->stopTimeout(Landroid/app/PendingIntent;)V

    .line 1139
    iput-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCountZeroTimeoutIntent:Landroid/app/PendingIntent;

    .line 1141
    :cond_17
    return-void
.end method

.method private stopTimeout(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1126
    if-eqz p1, :cond_1f

    .line 1127
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTimeout : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1130
    :cond_1f
    return-void
.end method

.method private unregisterSessionCtrlBroadcastRcvr()V
    .registers 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 1167
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionCtrlBroadcastRcvr:Landroid/content/BroadcastReceiver;

    .line 1172
    :goto_e
    return-void

    .line 1170
    :cond_f
    const-string v0, "WfdsSession:Controller"

    const-string v1, "unregisterSessionCtrlBroadcastRcvr: already unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method public acquireWakeLock(Ljava/lang/String;)Z
    .registers 5
    .param p1, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1175
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_6

    .line 1184
    :cond_5
    :goto_5
    return v0

    .line 1179
    :cond_6
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1180
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": WakeLock acquire"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1182
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getPreventAllScan()Z
    .registers 2

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/lge/wfds/SessionController;->mPreventScan:Z

    return v0
.end method

.method public getSession(Ljava/lang/Integer;Ljava/lang/String;)Lcom/lge/wfds/session/AspSession;
    .registers 4
    .param p1, "session_id"    # Ljava/lang/Integer;
    .param p2, "session_mac"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0, p2, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .param p1, "service_mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSessionList()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wfds/session/AspSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v0}, Lcom/lge/wfds/session/AspSessionList;->getSessionList()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasOpenedSession()Z
    .registers 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v2}, Lcom/lge/wfds/session/AspSessionList;->getSessionSize()I

    move-result v2

    if-lez v2, :cond_18

    .line 181
    iget-object v2, p0, Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;

    invoke-virtual {v2}, Lcom/lge/wfds/session/AspSessionList;->getSessionList()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    .local v1, "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 189
    .end local v1    # "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2

    .line 183
    .restart local v1    # "sessionList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wfds/session/AspSession;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/session/AspSession;

    .line 184
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget v2, v0, Lcom/lge/wfds/session/AspSession;->state:I

    if-nez v2, :cond_12

    .line 185
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public releaseWakeLock(Ljava/lang/String;)Z
    .registers 5
    .param p1, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1188
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_6

    .line 1197
    :cond_5
    :goto_5
    return v0

    .line 1192
    :cond_6
    iget-object v1, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1193
    const-string v0, "WfdsSession:Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": WakeLock release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/lge/wfds/SessionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1195
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setCertiMode(Z)V
    .registers 2
    .param p1, "isCertiMode"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z

    .line 194
    return-void
.end method

.method public setWfdsStateMachine(Lcom/android/internal/util/StateMachine;)V
    .registers 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lge/wfds/SessionController;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 165
    return-void
.end method
