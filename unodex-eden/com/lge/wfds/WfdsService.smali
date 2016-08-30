.class public Lcom/lge/wfds/WfdsService;
.super Lcom/lge/wfds/IWfdsManager$Stub;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsService$Scanner;,
        Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;,
        Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x901000

.field private static final LISTEN_TIMEOUT:I = 0x2ee0

.field private static final PREFERRED_SCAN_CHANNEL_149:I = 0x95

.field private static final PREFERRED_SCAN_CHANNEL_36:I = 0x24

.field private static final PREFERRED_SCAN_CHANNEL_36_149:I = 0xb9

.field public static final PREFERRED_SCAN_CHANNEL_6:I = 0x6

.field private static final SUPPLICANT_DISCONNECT_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WfdsService"

.field private static final WFDS_CONNECTION_FAILED:I = 0x901007

.field private static final WFDS_CONNECTION_TIME:I = 0x7530

.field private static final WFDS_CONNECTION_TIMEOUT:I = 0x90100a

.field private static final WFDS_CONNECTION_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.CONNECTION_TIMEOUT"

.field private static final WFDS_CONTINUALLY_SCAN_EVENT:I = 0x90100f

.field public static final WFDS_DHCP_FILE_MODIFIED:I = 0x901017

.field public static final WFDS_DIALOG_BASE:I = 0x901028

.field private static final WFDS_DISABLE:I = 0x901001

.field private static final WFDS_DISPLAY_METHOD:I = 0x1

.field private static final WFDS_ENABLE:I = 0x901002

.field private static final WFDS_INVALID_SEEK_ID:I = -0x1

.field private static final WFDS_KEYPAD_METHOD:I = 0x2

.field public static final WFDS_MONITOR_BASE:I = 0x902000

.field private static final WFDS_P2P_KNOWN_DEVICE:I = 0x901011

.field private static final WFDS_P2P_UNKNOWN_DEVICE:I = 0x901012

.field private static final WFDS_PD_DEFERRED_TIME:I = 0x1d4c0

.field private static final WFDS_PD_DEFERRED_TIMEOUT:I = 0x901008

.field private static final WFDS_PD_DEFERRED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.PD_DEFER_TIMEOUT"

.field private static final WFDS_PD_RECEIVED_TIME:I = 0x2710

.field private static final WFDS_PD_RECEIVED_TIMEOUT:I = 0x901009

.field private static final WFDS_PD_RECEIVED_TIMEOUT_ACTION:Ljava/lang/String; = "com.lge.wfds.PD_RECEIVE_TIMEOUT"

.field private static final WFDS_PEER_CONNECT_COMPLETED:I = 0x901006

.field private static final WFDS_PEER_DEVICE_DISCONNECTED:I = 0x90100e

.field private static final WFDS_REMOVE_AUTONOMOUS_GROUP:I = 0x90100d

.field private static final WFDS_RESCAN_INTERVAL_MS:I = 0x1b58

.field private static final WFDS_SCAN_ALWAYS_MODE_CHANGED:I = 0x90100b

.field public static final WFDS_SESSION_CONTROLLER_BASE:I = 0x901032

.field public static final WFDS_SESSION_OPENING_FAILED:I = 0x901015

.field private static final WFDS_SESSION_OPENING_START:I = 0x90100c

.field public static final WFDS_SESSION_REQUEST_DISCONNECT:I = 0x901016

.field private static final WFDS_START_LISTEN:I = 0x901010

.field private static final WIFI_P2P_DISCONNECTED:I = 0x901005

.field private static final WIFI_SUPPLICANT_CONNECTED:I = 0x901003

.field private static final WIFI_SUPPLICANT_DISCONNECTED:I = 0x901004


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mAutonomousGroupId:I

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mConnectionTimeoutIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

.field private mDisplayPin:I

.field private mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mGroupOwnerAddress:Ljava/lang/String;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsCertificationMode:Z

.field private mKeypadEventString:Ljava/lang/String;

.field private mLatestAspSession:Lcom/lge/wfds/session/AspSession;

.field private mListenChannelForTest:I

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mPdDeferred:Z

.field private mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

.field private mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

.field private mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

.field private mPeerDevice:Lcom/lge/wfds/WfdsDevice;

.field private mPreferredScanOnlyOneChannel:I

.field private mRemoveAutonomousGroup:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRetryConnectionCnt:I

.field private mScanOnlyOneChannel:I

.field private mScanner:Lcom/lge/wfds/WfdsService$Scanner;

.field private mSentServiceRequestSentEvent:Z

.field private mSessionController:Lcom/lge/wfds/SessionController;

.field private mSuppConnected:Z

.field private mSuppDisconnectCount:I

.field private mThisDeviceAddress:Ljava/lang/String;

.field private mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

.field private mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

.field private mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

.field private mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

.field private mWfdsMonitorConnected:Z

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;

.field private mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

.field private mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/lge/wfds/IWfdsManager$Stub;-><init>()V

    .line 51
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 53
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 54
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 56
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 60
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    .line 61
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 64
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    .line 68
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    .line 70
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    .line 71
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    .line 72
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    .line 73
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    .line 74
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    .line 77
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    .line 78
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    .line 81
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    .line 84
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mGroupOwnerAddress:Ljava/lang/String;

    .line 87
    iput-object v7, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    .line 89
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    .line 90
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 91
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    .line 92
    iput v1, p0, Lcom/lge/wfds/WfdsService;->mRetryConnectionCnt:I

    .line 93
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    .line 94
    iput-boolean v1, p0, Lcom/lge/wfds/WfdsService;->mSentServiceRequestSentEvent:Z

    .line 176
    const-string v0, "WfdsService"

    const-string v1, "WfdsService is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    .line 180
    const-string v0, "p2p0"

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mInterfaceName:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/lge/wfds/WfdsNative;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lge/wfds/WfdsNative;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 183
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 184
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 185
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_87

    .line 186
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 189
    :cond_87
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryStore;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryStore;-><init>(Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    .line 191
    new-instance v0, Lcom/lge/wfds/WfdsEvent;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsEvent;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 193
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "WfdsAspSession"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 194
    .local v6, "wfdsThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 195
    new-instance v0, Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 196
    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/SessionController;-><init>(Landroid/content/Context;Lcom/lge/wfds/WfdsNative;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsDiscoveryStore;Landroid/os/Looper;)V

    .line 195
    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    .line 197
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    invoke-virtual {v0}, Lcom/lge/wfds/SessionController;->start()V

    .line 199
    new-instance v0, Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const-string v1, "WfdsService"

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;-><init>(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    .line 200
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->start()V

    .line 202
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v0, v1}, Lcom/lge/wfds/SessionController;->setWfdsStateMachine(Lcom/android/internal/util/StateMachine;)V

    .line 204
    new-instance v0, Lcom/lge/wfds/WfdsPeerList;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsPeerList;-><init>(Landroid/content/Context;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    .line 205
    new-instance v0, Lcom/lge/wfds/WfdsDialog;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsPeerList;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    .line 207
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->registerWfdsBroadcastReceiver()V

    .line 208
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->registerScanModeChange()V

    .line 210
    new-instance v0, Lcom/lge/wfds/WfdsService$1;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$1;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 221
    new-instance v0, Lcom/lge/wfds/WfdsService$2;

    invoke-direct {v0, p0}, Lcom/lge/wfds/WfdsService$2;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 233
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 234
    new-instance v0, Lcom/lge/wfds/WfdsService$Scanner;

    invoke-direct {v0, p0, v7}, Lcom/lge/wfds/WfdsService$Scanner;-><init>(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsService$Scanner;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    .line 236
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->sendWfdsServiceStartedBroadcast()V

    .line 237
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mSuppConnected:Z

    return v0
.end method

.method static synthetic access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    return v0
.end method

.method static synthetic access$15(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 74
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    return-void
.end method

.method static synthetic access$17(Lcom/lge/wfds/WfdsService;ZZ)V
    .registers 3

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V

    return-void
.end method

.method static synthetic access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3423
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 3345
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 3410
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 3419
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/lge/wfds/WfdsService;I)I
    .registers 3

    .prologue
    .line 3383
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->confirmScanOnlyChannel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    return-void
.end method

.method static synthetic access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    return-object v0
.end method

.method static synthetic access$27(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z

    return v0
.end method

.method static synthetic access$28(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method static synthetic access$29(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method static synthetic access$30(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pConfigEx;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

    return-void
.end method

.method static synthetic access$31(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$Scanner;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDiscoveryStore;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    return-object v0
.end method

.method static synthetic access$33(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsNative;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    return-object v0
.end method

.method static synthetic access$34(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    return-void
.end method

.method static synthetic access$35(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/WifiManager;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$36(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    return-void
.end method

.method static synthetic access$37(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    return-void
.end method

.method static synthetic access$38(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3315
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->resetWfdsTimer()V

    return-void
.end method

.method static synthetic access$39(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->updateP2pInterfaceState()V

    return-void
.end method

.method static synthetic access$40(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$41(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3354
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->selectPreferredScanChannel()V

    return-void
.end method

.method static synthetic access$42(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3335
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->checkDiscoveryAndExcute()V

    return-void
.end method

.method static synthetic access$43(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDevice;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPeerDevice:Lcom/lge/wfds/WfdsDevice;

    return-object v0
.end method

.method static synthetic access$44(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .registers 2

    .prologue
    .line 3159
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$45(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsEvent;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    return-object v0
.end method

.method static synthetic access$46(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3172
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$47(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .registers 2

    .prologue
    .line 3185
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$48(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mSentServiceRequestSentEvent:Z

    return v0
.end method

.method static synthetic access$49(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/session/AspSession;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V

    return-void
.end method

.method static synthetic access$50(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;I)V
    .registers 3

    .prologue
    .line 3240
    invoke-direct {p0, p1, p2}, Lcom/lge/wfds/WfdsService;->sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V

    return-void
.end method

.method static synthetic access$51(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mSentServiceRequestSentEvent:Z

    return-void
.end method

.method static synthetic access$52(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$53(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3295
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setConnectionTimeout()V

    return-void
.end method

.method static synthetic access$54(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3267
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V

    return-void
.end method

.method static synthetic access$55(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPeerConfigEx:Landroid/net/wifi/p2p/WifiP2pConfigEx;

    return-object v0
.end method

.method static synthetic access$56(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsDialog;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDialog:Lcom/lge/wfds/WfdsDialog;

    return-object v0
.end method

.method static synthetic access$57(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/WfdsDevice;)V
    .registers 2

    .prologue
    .line 3210
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V

    return-void
.end method

.method static synthetic access$58(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mDisplayPin:I

    return v0
.end method

.method static synthetic access$59(Lcom/lge/wfds/WfdsService;Lcom/lge/wfds/session/AspSession;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mLatestAspSession:Lcom/lge/wfds/session/AspSession;

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    return-void
.end method

.method static synthetic access$60(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->sendWfdsCreatGroupBroadcast()V

    return-void
.end method

.method static synthetic access$61(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mRetryConnectionCnt:I

    return-void
.end method

.method static synthetic access$62(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3255
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setProvisionReceivedTimeout()V

    return-void
.end method

.method static synthetic access$63(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mRetryConnectionCnt:I

    return v0
.end method

.method static synthetic access$64(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3198
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$65(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$66(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3287
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V

    return-void
.end method

.method static synthetic access$67(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3275
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->setProvisionDeferredTimeout()V

    return-void
.end method

.method static synthetic access$68(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferred:Z

    return v0
.end method

.method static synthetic access$69(Lcom/lge/wfds/WfdsService;)V
    .registers 1

    .prologue
    .line 3307
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V

    return-void
.end method

.method static synthetic access$7(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$70(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 3321
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->startDhcpFileObserver()Z

    move-result v0

    return v0
.end method

.method static synthetic access$71(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$72(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    return-void
.end method

.method static synthetic access$73(Lcom/lge/wfds/WfdsService;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mRemoveAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$74(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    return-void
.end method

.method static synthetic access$75(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroupId:I

    return v0
.end method

.method static synthetic access$76(Lcom/lge/wfds/WfdsService;Z)V
    .registers 2

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/wfds/WfdsService;->mAutonomousGroup:Z

    return-void
.end method

.method static synthetic access$77(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$78(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/DhcpFileObserver;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    return-object v0
.end method

.method static synthetic access$79(Lcom/lge/wfds/WfdsService;)I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    return v0
.end method

.method static synthetic access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;

    return-object v0
.end method

.method static synthetic access$80(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mKeypadEventString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$81(Lcom/lge/wfds/WfdsService;I)V
    .registers 2

    .prologue
    .line 91
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mListenChannelForTest:I

    return-void
.end method

.method static synthetic access$82(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$83(Lcom/lge/wfds/WfdsService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3222
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsService;->sendWfdsPersistentUnknownGroupBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$84(Lcom/lge/wfds/WfdsService;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/wfds/WfdsService;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-void
.end method

.method private byteFromHex(Ljava/lang/String;)B
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3465
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 3466
    .local v0, "i":I
    if-ltz v0, :cond_c

    const/16 v1, 0xff

    if-le v0, v1, :cond_27

    .line 3467
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "input string ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not fit into a Byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3469
    :cond_27
    int-to-byte v1, v0

    return v1
.end method

.method private checkDiscoveryAndExcute()V
    .registers 3

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3337
    :cond_10
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    if-eqz v0, :cond_22

    .line 3338
    const-string v0, "WfdsService"

    const-string v1, "WFDS: There are Advertise/Seek Information, Scan after 7 sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mScanner:Lcom/lge/wfds/WfdsService$Scanner;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$Scanner;->resume(I)V

    .line 3343
    :cond_22
    return-void
.end method

.method private confirmScanOnlyChannel(I)I
    .registers 9
    .param p1, "iChannel"    # I

    .prologue
    const/16 v6, 0xb9

    const/16 v5, 0x95

    const/16 v4, 0x24

    .line 3384
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I

    move-result v0

    .line 3386
    .local v0, "preferredChannel":I
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmScanOnlyChannel ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3387
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3386
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    if-eq v0, p1, :cond_48

    .line 3390
    const/4 v1, 0x6

    if-eq p1, v1, :cond_39

    .line 3391
    if-ne v0, v6, :cond_3e

    .line 3392
    if-eq p1, v4, :cond_39

    .line 3393
    if-ne p1, v5, :cond_3e

    .line 3394
    :cond_39
    move v0, p1

    .line 3405
    :cond_3a
    :goto_3a
    invoke-direct {p0, v0}, Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V

    .line 3407
    return v0

    .line 3395
    :cond_3e
    if-ne p1, v4, :cond_42

    .line 3396
    if-eq v0, v5, :cond_46

    .line 3397
    :cond_42
    if-ne p1, v5, :cond_3a

    .line 3398
    if-ne v0, v4, :cond_3a

    .line 3399
    :cond_46
    const/4 v0, 0x6

    .line 3401
    goto :goto_3a

    :cond_48
    if-ne v0, v6, :cond_3a

    .line 3402
    const/16 v0, 0x95

    goto :goto_3a
.end method

.method private enableWifi()V
    .registers 6

    .prologue
    .line 386
    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 387
    .local v0, "apState":I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_e

    .line 388
    const/16 v2, 0xd

    if-ne v0, v2, :cond_15

    .line 390
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_15} :catch_1c

    .line 395
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 396
    return-void

    .line 391
    :catch_1c
    move-exception v1

    .line 392
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 3145
    const-string v2, "WifiP2pService"

    .line 3144
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    .line 3150
    const-string v2, "WifiP2pService"

    .line 3149
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    return-void
.end method

.method private getDeviceAddress()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 3424
    const/4 v1, 0x0

    .line 3426
    .local v1, "deviceAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    if-eqz v4, :cond_2c

    .line 3427
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisDeviceAddress:Ljava/lang/String;

    .line 3455
    :cond_d
    :goto_d
    if-nez v1, :cond_11

    .line 3456
    const-string v1, "ff:ff:ff:ff:ff:ff"

    .line 3459
    :cond_11
    const-string v4, "WfdsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDeviceAddress ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    return-object v1

    .line 3430
    :cond_2c
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getInstance()Lcom/lge/wifi/impl/WifiExtManager;

    move-result-object v3

    .line 3432
    .local v3, "wifiExtMgr":Lcom/lge/wifi/impl/WifiExtManager;
    if-eqz v3, :cond_d

    .line 3433
    const/4 v2, 0x0

    .line 3436
    .local v2, "macAddress":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lge/wifi/impl/WifiExtManager;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 3438
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_d

    .line 3441
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_43
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/wfds/WfdsService;->byteFromHex(Ljava/lang/String;)B
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_8e

    move-result v0

    .line 3445
    .local v0, "byteMacAdd":B
    :goto_4b
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    or-int/2addr v4, v0

    int-to-byte v0, v4

    .line 3447
    const-string v4, "%02x:%2s:%2s:%2s:%2s:%2s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 3448
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3449
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3450
    const/16 v6, 0xa

    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x5

    const/16 v7, 0xa

    const/16 v8, 0xc

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3447
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 3443
    .end local v0    # "byteMacAdd":B
    :catch_8e
    move-exception v4

    const/4 v0, 0x0

    .restart local v0    # "byteMacAdd":B
    goto :goto_4b
.end method

.method private getPreferredScanChannel()I
    .registers 2

    .prologue
    .line 3346
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-eqz v0, :cond_14

    .line 3347
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasAdvertisement()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3348
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsDiscoveryStore:Lcom/lge/wfds/WfdsDiscoveryStore;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDiscoveryStore;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3349
    :cond_14
    const/4 v0, 0x6

    .line 3351
    :goto_15
    return v0

    :cond_16
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    goto :goto_15
.end method

.method private getScanOnlyChannel()I
    .registers 2

    .prologue
    .line 3420
    iget v0, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    return v0
.end method

.method private registerScanModeChange()V
    .registers 5

    .prologue
    .line 371
    new-instance v0, Lcom/lge/wfds/WfdsService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/wfds/WfdsService$3;-><init>(Lcom/lge/wfds/WfdsService;Landroid/os/Handler;)V

    .line 380
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 381
    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 382
    const/4 v3, 0x0

    .line 380
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    return-void
.end method

.method private registerWfdsBroadcastReceiver()V
    .registers 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_40

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    new-instance v1, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;-><init>(Lcom/lge/wfds/WfdsService;)V

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    .end local v0    # "mIntentFilter":Landroid/content/IntentFilter;
    :goto_3f
    return-void

    .line 256
    :cond_40
    const-string v1, "WfdsService"

    const-string v2, "registerWfdsBroadcastRecevier: already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method private removeConnectionTimeout()V
    .registers 3

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 3309
    const-string v0, "WfdsService"

    const-string v1, "removeConnectionTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3312
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    .line 3313
    return-void
.end method

.method private removeProvisionDeferredTimeout()V
    .registers 3

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 3289
    const-string v0, "WfdsService"

    const-string v1, "removeProvisionDeferredTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3292
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 3293
    return-void
.end method

.method private removeProvisionReceivedTimeout()V
    .registers 3

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 3269
    const-string v0, "WfdsService"

    const-string v1, "removeProvisionReceivedTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3272
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    .line 3273
    return-void
.end method

.method private resetWfdsTimer()V
    .registers 1

    .prologue
    .line 3316
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionReceivedTimeout()V

    .line 3317
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeProvisionDeferredTimeout()V

    .line 3318
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->removeConnectionTimeout()V

    .line 3319
    return-void
.end method

.method private selectPreferredScanChannel()V
    .registers 6

    .prologue
    .line 3355
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-nez v2, :cond_38

    .line 3357
    new-instance v1, Lcom/lge/wfds/WfdsNative;

    const-string v2, "wlan0"

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/lge/wfds/WfdsNative;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 3364
    .local v1, "wfdsWifiNative":Lcom/lge/wfds/WfdsNative;
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->getCapabilies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3366
    .local v0, "channelsCapa":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 3367
    const-string v2, "149"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3368
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    add-int/lit16 v2, v2, 0x95

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3371
    :cond_23
    const-string v2, "36"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3372
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    add-int/lit8 v2, v2, 0x24

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3375
    :cond_31
    iget v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    if-nez v2, :cond_38

    .line 3376
    const/4 v2, 0x6

    iput v2, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    .line 3380
    .end local v0    # "channelsCapa":Ljava/lang/String;
    .end local v1    # "wfdsWifiNative":Lcom/lge/wfds/WfdsNative;
    :cond_38
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectPreferredScanChannel ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/wfds/WfdsService;->mPreferredScanOnlyOneChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    return-void
.end method

.method private sendConnectStatus(Lcom/lge/wfds/session/AspSession;I)V
    .registers 8
    .param p1, "session"    # Lcom/lge/wfds/session/AspSession;
    .param p2, "status"    # I

    .prologue
    .line 3241
    if-nez p1, :cond_a

    .line 3242
    const-string v1, "WfdsService"

    const-string v2, "Send ConnectStatus: session is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :goto_9
    return-void

    .line 3246
    :cond_a
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3247
    .local v0, "sessionId":Ljava/lang/String;
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send ConnectStatus: status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3248
    const-string v3, ", SessionMAC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3249
    const-string v3, ", SessionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3247
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    iget-object v2, p1, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 3252
    iget v3, p1, Lcom/lge/wfds/session/AspSession;->session_id:I

    const/4 v4, 0x0

    .line 3251
    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/lge/wfds/WfdsEvent;->notifyConnectStatusToService(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_9
.end method

.method private sendWfdsCreatGroupBroadcast()V
    .registers 4

    .prologue
    .line 3234
    const-string v1, "WfdsService"

    const-string v2, "sendWfdsCreatGroupBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.CREATE_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3238
    return-void
.end method

.method private sendWfdsPeerInfoLostBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .registers 5
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 3186
    if-nez p1, :cond_3

    .line 3196
    :goto_2
    return-void

    .line 3190
    :cond_3
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeerInfoLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_INFO_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3193
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3194
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3195
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddr"    # Ljava/lang/String;

    .prologue
    .line 3173
    if-nez p1, :cond_3

    .line 3183
    :goto_2
    return-void

    .line 3177
    :cond_3
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeersLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3180
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3181
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3182
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsPeersChangedBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .registers 5
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 3160
    if-nez p1, :cond_3

    .line 3170
    :goto_2
    return-void

    .line 3164
    :cond_3
    const-string v1, "WfdsService"

    const-string v2, "WfdsPeersChangedBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3167
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3168
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3169
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsPersistentResultBroadcast(Lcom/lge/wfds/WfdsDevice;)V
    .registers 5
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 3211
    if-nez p1, :cond_3

    .line 3220
    :goto_2
    return-void

    .line 3214
    :cond_3
    const-string v1, "WfdsService"

    const-string v2, "WfdsPersistentResultBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PERSISTENT_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3217
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3218
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3219
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsPersistentUnknownGroupBroadcast(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 3223
    if-nez p1, :cond_3

    .line 3231
    :goto_2
    return-void

    .line 3227
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3228
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3229
    const-string v1, "wfdsUnknownGroupId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3230
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsProvisionDiscoveryChangedBroadcast(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 3199
    if-nez p1, :cond_3

    .line 3208
    :goto_2
    return-void

    .line 3202
    :cond_3
    const-string v1, "WfdsService"

    const-string v2, "WfdsProvisionDiscoveryBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3205
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3206
    const-string v1, "wfdsPdEvent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3207
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private sendWfdsServiceStartedBroadcast()V
    .registers 3

    .prologue
    .line 3154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3156
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3157
    return-void
.end method

.method private setConnectionTimeout()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3297
    .local v0, "connectionTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    .line 3300
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2a

    .line 3301
    const-string v1, "WfdsService"

    const-string v4, "setConnectionTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long v2, v4, v6

    .line 3303
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mConnectionTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3305
    .end local v2    # "triggerTime":J
    :cond_2a
    return-void
.end method

.method private setProvisionDeferredTimeout()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3277
    .local v0, "pdDeferredTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    .line 3280
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2b

    .line 3281
    const-string v1, "WfdsService"

    const-string v4, "setProvisionDeferredTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    add-long v2, v4, v6

    .line 3283
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mPdDeferredTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3285
    .end local v2    # "triggerTime":J
    :cond_2b
    return-void
.end method

.method private setProvisionReceivedTimeout()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3257
    .local v0, "pdReceivedTimeoutIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    .line 3260
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2a

    .line 3261
    const-string v1, "WfdsService"

    const-string v4, "setProvisionReceivedTimeout"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 3263
    .local v2, "triggerTime":J
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/lge/wfds/WfdsService;->mPdReceivedTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3265
    .end local v2    # "triggerTime":J
    :cond_2a
    return-void
.end method

.method private setScanOnlyChannel(I)V
    .registers 5
    .param p1, "iChannel"    # I

    .prologue
    .line 3411
    iget v1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    if-eqz v1, :cond_1c

    if-nez p1, :cond_1c

    .line 3412
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 3413
    .local v0, "r":Ljava/util/Random;
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsNative;->p2pSetChannel(I)Z

    .line 3416
    .end local v0    # "r":Ljava/util/Random;
    :cond_1c
    iput p1, p0, Lcom/lge/wfds/WfdsService;->mScanOnlyOneChannel:I

    .line 3417
    return-void
.end method

.method private setWfdsMonitor(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V

    .line 442
    return-void
.end method

.method private setWfdsMonitor(ZZ)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 421
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set the WFDS Monitor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz p1, :cond_32

    .line 423
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    if-nez v0, :cond_2c

    .line 424
    new-instance v0, Lcom/lge/wfds/WfdsMonitor;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    iget-object v3, p0, Lcom/lge/wfds/WfdsService;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/WfdsMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsNative;)V

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    .line 425
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->registerMonitor()Z

    .line 427
    :cond_2c
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->startMonitoring()V

    .line 438
    :cond_31
    :goto_31
    return-void

    .line 429
    :cond_32
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    if-eqz v0, :cond_31

    .line 430
    if-nez p2, :cond_48

    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 431
    const-string v0, "WfdsService"

    const-string v1, "Do not stopped the monitor because of ScanAlwaysAvailable mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 433
    :cond_48
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->stopMonitoring()V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z

    goto :goto_31
.end method

.method private startDhcpFileObserver()Z
    .registers 5

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    if-nez v0, :cond_26

    .line 3323
    new-instance v0, Lcom/lge/wfds/DhcpFileObserver;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    .line 3324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/misc/dhcp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3325
    const-string v3, "dnsmasq.leases"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wfds/DhcpFileObserver;-><init>(Lcom/android/internal/util/StateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    .line 3327
    :cond_26
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    if-eqz v0, :cond_31

    .line 3328
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mDhcpFileObserver:Lcom/lge/wfds/DhcpFileObserver;

    invoke-virtual {v0}, Lcom/lge/wfds/DhcpFileObserver;->startObserving()V

    .line 3329
    const/4 v0, 0x1

    .line 3331
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method private unregisterWfdsBroadcastReceiver()V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 262
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    :goto_e
    return-void

    .line 265
    :cond_f
    const-string v0, "WfdsService"

    const-string v1, "unregisterWfdsBroadcastReceiver: already unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private updateP2pInterfaceState()V
    .registers 5

    .prologue
    .line 401
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1c

    .line 402
    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mThisP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 403
    .local v0, "p2pInterfaceState":I
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update P2p Interface State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0    # "p2pInterfaceState":I
    :cond_1c
    return-void
.end method

.method private updateP2pPeersList()V
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_5

    .line 418
    :goto_4
    return-void

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/lge/wfds/WfdsService$4;

    invoke-direct {v2, p0}, Lcom/lge/wfds/WfdsService$4;-><init>(Lcom/lge/wfds/WfdsService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_4
.end method


# virtual methods
.method public deinitEventListener(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    if-nez v0, :cond_5

    .line 488
    :goto_4
    return-void

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->deinitEventListener(I)V

    goto :goto_4
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->enforceAccessPermission()V

    .line 465
    invoke-direct {p0}, Lcom/lge/wfds/WfdsService;->enforceChangePermission()V

    .line 466
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getSessionMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 470
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;

    invoke-virtual {v1}, Lcom/lge/wfds/SessionController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .registers 4
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    if-nez v0, :cond_d

    .line 475
    const-string v0, "WfdsService"

    const-string v1, "initEventListener mWfdsEvent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, -0x1

    .line 479
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/lge/wfds/WfdsService;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsEvent;->initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I

    move-result v0

    goto :goto_c
.end method
