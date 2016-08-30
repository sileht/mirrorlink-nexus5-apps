.class public Lcom/lge/systemservice/core/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# static fields
.field public static final DIRECT_STATE_CONNECTED:I = 0x4

.field public static final DIRECT_STATE_CONNECTING:I = 0x3

.field public static final DIRECT_STATE_DISABLED:I = 0x0

.field public static final DIRECT_STATE_DISABLING:I = 0x6

.field public static final DIRECT_STATE_DISCONNECTING:I = 0x5

.field public static final DIRECT_STATE_ENABLING:I = 0x1

.field public static final DIRECT_STATE_NOT_CONNECTED:I = 0x2

.field public static final DIRECT_STATE_UNKNOWN:I = 0x7

.field public static final DRM_REQ_FORCED_PAUSE:I = 0x2

.field public static final DRM_REQ_NONE:I = 0x3

.field public static final DRM_REQ_PAUSE:I = 0x1

.field public static final DRM_REQ_RESUME:I = 0x0

.field public static final EXTRA_CONNECTED_UDN:Ljava/lang/String; = "connected_udn"

.field public static final EXTRA_DLNA_TRANSIT_ENABLE:Ljava/lang/String; = "wfd_switch"

.field public static final EXTRA_DLNA_UDN:Ljava/lang/String; = "dlna_udn"

.field public static final EXTRA_HDCP_ENABLED:Ljava/lang/String; = "hdcp_enabled"

.field public static final EXTRA_IGNORE_DIRECT_CONNECTION:Ljava/lang/String; = "ignore_direct_connection"

.field public static final EXTRA_LG_MIRACAST_VER:Ljava/lang/String; = "lg_wfd_version"

.field public static final EXTRA_PAUSE_REQ:Ljava/lang/String; = "drm_pause_req"

.field public static final EXTRA_PLAYER:Ljava/lang/String; = "drm_player"

.field public static final EXTRA_PREVIOUS_WFD_STATE:Ljava/lang/String; = "previous_wfd_state"

.field public static final EXTRA_RTSP_STATE:Ljava/lang/String; = "rtsp_state"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final EXTRA_TCP_SUPPORT:Ljava/lang/String; = "tcp_support"

.field public static final EXTRA_TRANSPORT_MODE:Ljava/lang/String; = "transport_mode"

.field public static final EXTRA_WFD_CALLBACK:Ljava/lang/String; = "extra_wfd_callback"

.field public static final EXTRA_WFD_MODE:Ljava/lang/String; = "wfd_mode"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final EXTRA_WFD_TRANSIT_FAIL_REASON:Ljava/lang/String; = "extra_fail_reason"

.field public static final EXTRA_WHRZ_PORTS:Ljava/lang/String; = "whrz_ports"

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.wfdService"

.field public static final RTSP_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.rtsp.STATE_CHANGE"

.field public static final RTSP_STATE_CREATING:I = 0x2

.field public static final RTSP_STATE_INIT:I = 0x4

.field public static final RTSP_STATE_LISTEN:I = 0x3

.field public static final RTSP_STATE_NEW:I = 0x0

.field public static final RTSP_STATE_NOT_RUNNING:I = 0x1

.field public static final RTSP_STATE_PLAYING:I = 0x6

.field public static final RTSP_STATE_READY:I = 0x5

.field public static final RTSP_STATE_UNKNOWN:I = 0x7

.field public static final SERVICE_NAME:Ljava/lang/String; = "wfdService"

.field public static final SESSION_CB_HDCP_CONNECT_FAIL:I = 0x2

.field public static final SESSION_CB_HDCP_CONNECT_SUCCESS:I = 0x1

.field public static final SESSION_CB_NETWORK_ERROR:I = 0x8

.field public static final SESSION_CB_NONE:I = 0x0

.field public static final SESSION_CB_TEARDOWN_STARTED:I = 0x5

.field public static final SESSION_CB_UIBC_DISABLED:I = 0x7

.field public static final SESSION_CB_UIBC_ENABLED:I = 0x6

.field public static final SESSION_CB_UIBC_NOT_SUPPORTED:I = 0x4

.field public static final SESSION_CB_UIBC_SUPPORTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final TRANSPORT_TCP:I = 0x1

.field public static final TRANSPORT_UDP:I = 0x0

.field public static final WFD_INFORM_DRM_STATUS:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_INFORM_DRM_STATUS"

.field public static final WFD_LG_PEER_EVENT_FAIL_REASON:I = 0x3

.field public static final WFD_LG_PEER_EVENT_NONE:I = 0x0

.field public static final WFD_LG_PEER_EVENT_PEER_INFO:I = 0x1

.field public static final WFD_LG_PEER_EVENT_SRC_IP:I = 0x2

.field public static final WFD_MODE_NONE:I = -0x1

.field public static final WFD_MODE_SINK:I = 0x1

.field public static final WFD_MODE_SOURCE:I = 0x0

.field public static final WFD_REQ_DISABLE:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_DISABLE"

.field public static final WFD_REQ_DISCOVER_WFD_PEERS:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQ_DISCOVER_WFD_PEERS"

.field public static final WFD_REQ_DLNA_TRANSIT:Ljava/lang/String; = "lge.wfd.switch.start"

.field public static final WFD_REQ_ENABLE:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_ENABLE"

.field public static final WFD_REQ_ENABLE_WITH_POPUP:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_ENABLE_WITH_POPUP"

.field public static final WFD_REQ_RESUME_FROM_DLNA:Ljava/lang/String; = "lge.wfd.switch.stop"

.field public static final WFD_REQ_RESUME_FROM_WHRZ:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQ_RESUME_FROM_WHRZ"

.field public static final WFD_REQ_WHRZ_TRANSIT:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_REQ_WHRZ_TRANSIT"

.field public static final WFD_SINK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_SINK_STATE_CHANGED"

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

.field public static final WFD_STATE_CONNECTING:I = 0x3

.field public static final WFD_STATE_DISABLED:I = 0x0

.field public static final WFD_STATE_DISABLING:I = 0x7

.field public static final WFD_STATE_DISCONNECTING:I = 0x6

.field public static final WFD_STATE_ENABLING:I = 0x1

.field public static final WFD_STATE_LINK_CONNECTED:I = 0x4

.field public static final WFD_STATE_NOT_CONNECTED:I = 0x2

.field public static final WFD_STATE_UNKNOWN:I = 0x8

.field public static final WFD_STATE_WFD_PAIRED:I = 0x5

.field public static final WFD_TRANSIT_CALLBACK:Ljava/lang/String; = "com.lge.systemservice.core.wfdmanager.WFD_TRANSIT_CALLBACK"

.field public static final WFD_TRANSIT_DLNA_READY:I = 0x2

.field public static final WFD_TRANSIT_FAIL:I = 0x0

.field public static final WFD_TRANSIT_FAIL_ALREADY_DONE:I = 0x2

.field public static final WFD_TRANSIT_FAIL_NOT_SUPPORTED:I = 0x1

.field public static final WFD_TRANSIT_FAIL_NO_REASON:I = 0x0

.field public static final WFD_TRANSIT_FAIL_OTHER_PLAYER_IS_RUNNING:I = 0x3

.field public static final WFD_TRANSIT_FAIL_PEER_NOT_READY:I = 0x4

.field public static final WFD_TRANSIT_FAIL_PEER_RESPONSE_TIMEOUT:I = 0x5

.field public static final WFD_TRANSIT_WFD_READY:I = 0x1

.field public static final WFD_TRANSIT_WHRZ_READY:I = 0x3

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_NOT_CONNECTED:I


# instance fields
.field private mService:Lcom/lge/systemservice/core/IWfdManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/WfdManager;Lcom/lge/systemservice/core/IWfdManager;)V
    .registers 2

    .prologue
    .line 551
    iput-object p1, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IWfdManager;
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    if-nez v0, :cond_23

    .line 559
    const-string v0, "wfdService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    .line 560
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    if-eqz v0, :cond_23

    .line 562
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IWfdManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/WfdManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/WfdManager$1;-><init>(Lcom/lge/systemservice/core/WfdManager;)V

    .line 565
    const/4 v2, 0x0

    .line 562
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 569
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    return-object v0

    .line 566
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_23
.end method


# virtual methods
.method public cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 797
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 798
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 799
    const-string v3, "WfdManager"

    const-string v4, "cancelP2pConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_e
    return v2

    .line 803
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 804
    const/4 v2, 0x1

    goto :goto_e

    .line 805
    :catch_14
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 807
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public cancelP2pConnect(Lcom/lge/systemservice/core/WfdServiceListener;)Z
    .registers 8
    .param p1, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 823
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 824
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_f

    .line 825
    const-string v4, "WfdManager"

    const-string v5, "cancelP2pConnect: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_e
    return v3

    .line 829
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 830
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, v0}, Lcom/lge/systemservice/core/IWfdManager;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 831
    const/4 v3, 0x1

    goto :goto_e

    .line 832
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_18
    move-exception v1

    .line 833
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 834
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public cancelWifiDisplayConnect()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 650
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 651
    const-string v3, "WfdManager"

    const-string v4, "cancelWifiDisplayConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_e
    return v2

    .line 655
    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->cancelWifiDisplayConnect()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 656
    :catch_14
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 658
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public checkIfInSavedList(Ljava/lang/String;)Z
    .registers 7
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 895
    if-nez p1, :cond_4

    .line 908
    :goto_3
    return v2

    .line 898
    :cond_4
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 899
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_12

    .line 900
    const-string v3, "WfdManager"

    const-string v4, "checkIfInSavedList: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 904
    :cond_12
    :try_start_12
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->checkIfInSavedList(Ljava/lang/String;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    move-result v2

    goto :goto_3

    .line 905
    :catch_17
    move-exception v0

    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 907
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_3
.end method

.method public discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 696
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 697
    const-string v3, "WfdManager"

    const-string v4, "discoverWfdPeers: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_e
    return v2

    .line 701
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 702
    const/4 v2, 0x1

    goto :goto_e

    .line 703
    :catch_14
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 705
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public discoverWfdPeers(Lcom/lge/systemservice/core/WfdServiceListener;)Z
    .registers 8
    .param p1, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 720
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 721
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_f

    .line 722
    const-string v4, "WfdManager"

    const-string v5, "discoverWfdPeers: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_e
    return v3

    .line 726
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 727
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, v0}, Lcom/lge/systemservice/core/IWfdManager;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 728
    const/4 v3, 0x1

    goto :goto_e

    .line 729
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_18
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 731
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public getRtspState()I
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1008
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 1009
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 1010
    const-string v3, "WfdManager"

    const-string v4, "getRtspState: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_e
    return v2

    .line 1014
    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getRtspState()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 1015
    :catch_14
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1017
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public getWfdMode()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 943
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 944
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 945
    const-string v3, "WfdManager"

    const-string v4, "getWfdMode: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :goto_e
    return v2

    .line 949
    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getWfdMode()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 950
    :catch_14
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 952
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public getWfdState()I
    .registers 6

    .prologue
    const/16 v2, 0x8

    .line 976
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 977
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_10

    .line 978
    const-string v3, "WfdManager"

    const-string v4, "getWfdState: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_f
    return v2

    .line 982
    :cond_10
    :try_start_10
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->getWfdState()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    move-result v2

    goto :goto_f

    .line 983
    :catch_15
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 985
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_f
.end method

.method public informConnectionRequstedUdn(Ljava/lang/String;)V
    .registers 6
    .param p1, "req_udn"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 672
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_e

    .line 673
    const-string v2, "WfdManager"

    const-string v3, "informConnectionRequstedUdn: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_d
    return-void

    .line 677
    :cond_e
    :try_start_e
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->informConnectionRequstedUdn(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_d

    .line 678
    :catch_12
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 680
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_d
.end method

.method public registerWfdMediaController(Lcom/lge/systemservice/core/IWfdMediaCmdListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/lge/systemservice/core/IWfdMediaCmdListener;

    .prologue
    const/4 v2, 0x0

    .line 1023
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 1024
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 1025
    const-string v3, "WfdManager"

    const-string v4, "registerWfdMediaController: wfdservice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_e
    return v2

    .line 1029
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->registerWfdMediaController(Lcom/lge/systemservice/core/IWfdMediaCmdListener;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 1030
    :catch_14
    move-exception v0

    .line 1031
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1032
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public releaseWfdMediaController()V
    .registers 5

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 1039
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_e

    .line 1040
    const-string v2, "WfdManager"

    const-string v3, "releaseWfdMediaController: wfdservice is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_d
    return-void

    .line 1044
    :cond_e
    :try_start_e
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->releaseWfdMediaController()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_d

    .line 1045
    :catch_12
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1047
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_d
.end method

.method public requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)Z
    .registers 9
    .param p1, "peer_addr"    # Ljava/lang/String;
    .param p2, "wps_method"    # I
    .param p3, "listener"    # Lcom/lge/systemservice/core/IWfdServiceListener;

    .prologue
    const/4 v2, 0x0

    .line 745
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 746
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 747
    const-string v3, "WfdManager"

    const-string v4, "requestConnect: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_e
    return v2

    .line 751
    :cond_f
    :try_start_f
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/systemservice/core/IWfdManager;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 752
    const/4 v2, 0x1

    goto :goto_e

    .line 753
    :catch_14
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 755
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/WfdServiceListener;)Z
    .registers 10
    .param p1, "peer_addr"    # Ljava/lang/String;
    .param p2, "wps_method"    # I
    .param p3, "listener"    # Lcom/lge/systemservice/core/WfdServiceListener;

    .prologue
    const/4 v3, 0x0

    .line 769
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v2

    .line 770
    .local v2, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v2, :cond_f

    .line 771
    const-string v4, "WfdManager"

    const-string v5, "requestConnect: fail to get WfdService"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_e
    return v3

    .line 775
    :cond_f
    :try_start_f
    invoke-virtual {p3}, Lcom/lge/systemservice/core/WfdServiceListener;->getWfdServiceListener()Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 777
    .local v0, "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-interface {v2, p1, p2, v0}, Lcom/lge/systemservice/core/IWfdManager;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 778
    const/4 v3, 0x1

    goto :goto_e

    .line 779
    .end local v0    # "_listener":Lcom/lge/systemservice/core/IWfdServiceListener;
    :catch_18
    move-exception v1

    .line 780
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 781
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public setTransportType(I)Z
    .registers 8
    .param p1, "transport_type"    # I

    .prologue
    const/4 v2, 0x0

    .line 918
    const-string v3, "WfdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setTransportType to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-eqz p1, :cond_22

    const/4 v3, 0x1

    if-eq p1, v3, :cond_22

    .line 920
    const-string v3, "WfdManager"

    const-string v4, "setTransportType: invaid transport type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_21
    return v2

    .line 923
    :cond_22
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 924
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_30

    .line 925
    const-string v3, "WfdManager"

    const-string v4, "setTransportType: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 929
    :cond_30
    :try_start_30
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setTransportType(I)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_35

    move-result v2

    goto :goto_21

    .line 930
    :catch_35
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 932
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_21
.end method

.method public setUiStateOff(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 869
    if-gez p1, :cond_a

    .line 870
    const-string v2, "WfdManager"

    const-string v3, "setUiStateOff: id may not be negative"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_9
    return-void

    .line 873
    :cond_a
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 874
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    const-string v2, "WfdManager"

    const-string v3, "setUiStateOff"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-nez v1, :cond_1f

    .line 876
    const-string v2, "WfdManager"

    const-string v3, "setUiStateOff: fail to get WfdService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 880
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setUiStateOff(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_9

    .line 881
    :catch_23
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 883
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_9
.end method

.method public setUiStateOn()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 848
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 849
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    const-string v3, "WfdManager"

    const-string v4, "setUiStateOn"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-nez v1, :cond_16

    .line 851
    const-string v3, "WfdManager"

    const-string v4, "setUiStateOn: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_15
    return v2

    .line 855
    :cond_16
    :try_start_16
    invoke-interface {v1}, Lcom/lge/systemservice/core/IWfdManager;->setUiStateOn()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    goto :goto_15

    .line 856
    :catch_1b
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 858
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_15
.end method

.method public setWfdSinkEnabled(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 627
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 628
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 629
    const-string v3, "WfdManager"

    const-string v4, "setWfdSinkEnabled: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_e
    return v2

    .line 633
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWfdSinkEnabled(Z)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 634
    :catch_14
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 636
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public setWifiDisplayEnabled(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 582
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 583
    const-string v3, "WfdManager"

    const-string v4, "setWifiDisplayEnabled: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_e
    return v2

    .line 587
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWifiDisplayEnabled(Z)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 588
    :catch_14
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 590
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method

.method public setWifiDisplayEnabledWithPopUp(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-direct {p0}, Lcom/lge/systemservice/core/WfdManager;->getService()Lcom/lge/systemservice/core/IWfdManager;

    move-result-object v1

    .line 606
    .local v1, "wfdService":Lcom/lge/systemservice/core/IWfdManager;
    if-nez v1, :cond_f

    .line 607
    const-string v3, "WfdManager"

    const-string v4, "setWifiDisplayEnabledWithPopUp: fail to get WfdService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_e
    return v2

    .line 611
    :cond_f
    :try_start_f
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IWfdManager;->setWifiDisplayEnabledWithPopUp(Z)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    goto :goto_e

    .line 612
    :catch_14
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 614
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/systemservice/core/WfdManager;->mService:Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_e
.end method
