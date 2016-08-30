.class public Lcom/lge/wfds/WfdsManager;
.super Ljava/lang/Object;
.source "WfdsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsManager$Channel;,
        Lcom/lge/wfds/WfdsManager$WfdsActionListener;,
        Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;,
        Lcom/lge/wfds/WfdsManager$WfdsChannelListener;,
        Lcom/lge/wfds/WfdsManager$WfdsIntListener;,
        Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;,
        Lcom/lge/wfds/WfdsManager$WfdsStrListener;
    }
.end annotation


# static fields
.field public static final APP_PKG_BUNDLE_KEY:Ljava/lang/String; = "appPkgName"

.field private static final BASE_WFDS_MANAGER:I = 0x900000

.field public static final CMD_ACTION_LISTENER_FAILED:I = 0x90001f

.field public static final CMD_ACTION_LISTENER_SUCCEEDED:I = 0x900020

.field public static final CMD_ADVERTISE_SERVICE:I = 0x900001

.field public static final CMD_ASPSESSION_LISTENER_FAILED:I = 0x900027

.field public static final CMD_ASPSESSION_LISTENER_SUCCEEDED:I = 0x900028

.field public static final CMD_BOUND_PORT:I = 0x900008

.field public static final CMD_CANCEL_ADVERTISE:I = 0x900003

.field public static final CMD_CANCEL_CONNECT_SESSION:I = 0x90000f

.field public static final CMD_CANCEL_SEEK_SERVICE:I = 0x90000a

.field public static final CMD_CLOSE_SESSION:I = 0x900007

.field public static final CMD_CONFIRM_LISTEN_CHANNEL:I = 0x90005e

.field public static final CMD_CONFIRM_SESSION:I = 0x90000d

.field public static final CMD_CONNECT_SESSION:I = 0x900005

.field public static final CMD_DISCONNECT_SESSION:I = 0x90000e

.field public static final CMD_GET_DEVICE_ADDRESS:I = 0x90005b

.field public static final CMD_GET_LISTEN_CHANNEL:I = 0x90005c

.field public static final CMD_GET_SESSION:I = 0x90000c

.field public static final CMD_INT_LISTENER_FAILED:I = 0x900021

.field public static final CMD_INT_LISTENER_SUCCEEDED:I = 0x900022

.field public static final CMD_INT_STR_LISTENER_FAILED:I = 0x900025

.field public static final CMD_INT_STR_LISTENER_SUCCEEDED:I = 0x900026

.field public static final CMD_REJECT_SESSION:I = 0x90000b

.field public static final CMD_RELEASE_PORT:I = 0x900009

.field public static final CMD_SEEK_SERVICE:I = 0x900004

.field public static final CMD_SERVICE_STATUS_CHANGE:I = 0x900002

.field public static final CMD_SESSION_READY:I = 0x900006

.field public static final CMD_SET_LISTEN_CHANNEL:I = 0x90005d

.field public static final CMD_STR_LISTENER_FAILED:I = 0x900023

.field public static final CMD_STR_LISTENER_SUCCEEDED:I = 0x900024

.field public static final CMD_TEST_CREATE_GROUP:I = 0x900037

.field public static final CMD_TEST_GET_CONNECT_CAPA:I = 0x900034

.field public static final CMD_TEST_GET_DISPLAY_PIN:I = 0x900036

.field public static final CMD_TEST_SET_CERTIFICATION_MODE:I = 0x900039

.field public static final CMD_TEST_SET_CONNECT_CAPA:I = 0x900033

.field public static final CMD_TEST_SET_LISTEN_CHANNEL:I = 0x900038

.field public static final CMD_TEST_SET_WSC_CONFIG_METHOD:I = 0x900035

.field public static final CMD_WFDS_SERVICE_BASE:I = 0x901000

.field public static final EXTRA_WFDS_PERSISTENT_UNKNOWN_GROUP:Ljava/lang/String; = "wfdsUnknownGroupId"

.field public static final EXTRA_WFDS_PROV_EVENT:Ljava/lang/String; = "wfdsPdEvent"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.wfds.asp"

.field public static final REASON_BUSY:I = 0x5

.field public static final REASON_DUPLICATED:I = 0x1

.field public static final REASON_FAILURE:I = 0x2

.field public static final REASON_NOT_SUPPORTED:I = 0x0

.field public static final REASON_ROLE_CONFLICT:I = 0x6

.field public static final REASON_TIMEOUT:I = 0x3

.field public static final REASON_USER_REQUEST:I = 0x4

.field public static final RESET_DIALOG_LISTENER_BUNDLE_KEY:Ljava/lang/String; = "dialogResetFlag"

.field public static final SERVICE_NAME:Ljava/lang/String; = "WfdsService"

.field public static final SERVICE_REQUEST_ACCEPT:I = 0x3

.field public static final SERVICE_REQUEST_CANCELED:I = 0x9

.field public static final SERVICE_REQUEST_CONNECTED:I = 0x6

.field public static final SERVICE_REQUEST_DEFERRED:I = 0x2

.field public static final SERVICE_REQUEST_DISCONNECTED:I = 0x8

.field public static final SERVICE_REQUEST_FAILED:I = 0x7

.field public static final SERVICE_REQUEST_REJECT:I = 0x4

.field public static final SERVICE_REQUEST_SENT:I = 0x1

.field public static final SERVICE_REQUEST_TIMEOUT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "WfdsManager"

.field public static final WFDS_CONNECTION_CAPABILITY_CLI:I = 0x2

.field public static final WFDS_CONNECTION_CAPABILITY_CLI_GO:I = 0x6

.field public static final WFDS_CONNECTION_CAPABILITY_GO:I = 0x4

.field public static final WFDS_CONNECTION_CAPABILITY_NEW:I = 0x1

.field public static final WFDS_CONNECTION_CAPABILITY_NEW_GO:I = 0x5

.field public static final WFDS_CREATE_GROUP_ACTION:Ljava/lang/String; = "com.lge.wfds.CREATE_GROUP"

.field public static final WFDS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_CHANGED"

.field public static final WFDS_DEVICE_INFO_LOST_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_INFO_LOST"

.field public static final WFDS_DEVICE_LOST_ACTION:Ljava/lang/String; = "com.lge.wfds.DEVICE_LOST"

.field public static final WFDS_PD_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wfds.PROVISION_DISCOVERY_CHANGED"

.field public static final WFDS_PERSISTENT_RESULT_ACTION:Ljava/lang/String; = "com.lge.wfds.PERSISTENT_RESULT"

.field public static final WFDS_PERSISTENT_UNKNOWN_GROUP_ACTION:Ljava/lang/String; = "com.lge.wfds.PERSISTENT_UNKNOWN_GROUP"

.field public static final WFDS_PORT_STATUS_FAILURE:I = 0x2

.field public static final WFDS_PORT_STATUS_LOCAL_PORT_ALLOWED:I = 0x0

.field public static final WFDS_PORT_STATUS_LOCAL_PORT_BLOCKED:I = 0x1

.field public static final WFDS_PORT_STATUS_REMOTE_PORT_ALLOWED:I = 0x3

.field public static final WFDS_SERVICE_STARTED_ACTION:Ljava/lang/String; = "com.lge.wfds.SERVICE_STARTED"

.field public static final WFDS_SESSION_STATE_CLOSED:I = 0x3

.field public static final WFDS_SESSION_STATE_INITIATED:I = 0x1

.field public static final WFDS_SESSION_STATE_OPEN:I = 0x0

.field public static final WFDS_SESSION_STATE_REQUESTED:I = 0x2

.field public static final WFDS_SESSION_STATUS_DISASSOCIATED:I = 0x1

.field public static final WFDS_SESSION_STATUS_LOCAL_CLOSED:I = 0x2

.field public static final WFDS_SESSION_STATUS_NO_RESPONSE_FROM_REMOTE:I = 0x5

.field public static final WFDS_SESSION_STATUS_OK:I = 0x0

.field public static final WFDS_SESSION_STATUS_REMOTE_CLOSED:I = 0x3

.field public static final WFDS_SESSION_STATUS_SYSTEM_FAILURE:I = 0x4

.field private static mWfdsManager:Lcom/lge/wfds/WfdsManager;

.field private static mWfdsService:Lcom/lge/wfds/IWfdsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 36
    sput-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    .line 194
    return-void
.end method

.method private constructor <init>(Lcom/lge/wfds/IWfdsManager;)V
    .registers 2
    .param p1, "service"    # Lcom/lge/wfds/IWfdsManager;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sput-object p1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 198
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/IWfdsManager;)V
    .registers 1

    .prologue
    .line 35
    sput-object p0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsManager;)V
    .registers 1

    .prologue
    .line 36
    sput-object p0, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    return-void
.end method

.method private static checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V
    .registers 3
    .param p0, "c"    # Lcom/lge/wfds/WfdsManager$Channel;

    .prologue
    .line 476
    if-nez p0, :cond_a

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[WFDS] Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_a
    return-void
.end method

.method private static checkMethod(Lcom/lge/wfds/WfdsDiscoveryMethod;)V
    .registers 3
    .param p0, "method"    # Lcom/lge/wfds/WfdsDiscoveryMethod;

    .prologue
    .line 482
    if-nez p0, :cond_a

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[WFDS] method info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_a
    return-void
.end method

.method public static getInstance()Lcom/lge/wfds/WfdsManager;
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 201
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    if-nez v2, :cond_29

    .line 202
    const-string v2, "WfdsService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 203
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wfds/IWfdsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wfds/IWfdsManager;

    move-result-object v1

    .line 204
    .local v1, "service":Lcom/lge/wfds/IWfdsManager;
    new-instance v2, Lcom/lge/wfds/WfdsManager;

    invoke-direct {v2, v1}, Lcom/lge/wfds/WfdsManager;-><init>(Lcom/lge/wfds/IWfdsManager;)V

    sput-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    .line 205
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v2, :cond_29

    .line 207
    :try_start_1a
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v2}, Lcom/lge/wfds/IWfdsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/lge/wfds/WfdsManager$1;

    invoke-direct {v3}, Lcom/lge/wfds/WfdsManager$1;-><init>()V

    .line 214
    const/4 v4, 0x0

    .line 207
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_2c

    .line 221
    :cond_29
    :goto_29
    sget-object v2, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    return-object v2

    .line 216
    :catch_2c
    move-exception v2

    sput-object v5, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    .line 217
    sput-object v5, Lcom/lge/wfds/WfdsManager;->mWfdsManager:Lcom/lge/wfds/WfdsManager;

    goto :goto_29
.end method

.method private getMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1193
    :try_start_1
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v1, :cond_b

    .line 1194
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v1}, Lcom/lge/wfds/IWfdsManager;->getMessenger()Landroid/os/Messenger;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 1199
    :cond_b
    :goto_b
    return-object v0

    .line 1197
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private getSessionMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1211
    :try_start_1
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v1, :cond_b

    .line 1212
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v1}, Lcom/lge/wfds/IWfdsManager;->getSessionMessenger()Landroid/os/Messenger;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 1217
    :cond_b
    :goto_b
    return-object v0

    .line 1215
    :catch_c
    move-exception v1

    goto :goto_b
.end method


# virtual methods
.method public advertiseService(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 14
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "accept"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "role"    # I
    .param p7, "config"    # I
    .param p8, "deferred_session_response"    # Ljava/lang/String;
    .param p9, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 645
    const-string v2, "WfdsManager"

    const-string v3, "AdvertiseService method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-nez p2, :cond_a

    .line 672
    :goto_9
    return-void

    .line 651
    :cond_a
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Ljava/lang/String;I)V

    .line 654
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-nez v2, :cond_1e

    .line 655
    :cond_16
    const-string v2, "WfdsManager"

    const-string v3, "AdvertiseService is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 658
    :cond_1e
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setAcceptMethod(I)V

    .line 659
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p5}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 660
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p4}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceInfo(Ljava/lang/String;)V

    .line 661
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p6}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setNetworkRole(I)V

    .line 662
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p7}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setNetworkConfig(I)V

    .line 664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 665
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900001

    iput v2, v1, Landroid/os/Message;->what:I

    .line 666
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 667
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p9}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 668
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 670
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 671
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_9
.end method

.method public boundPort(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 13
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "proto"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1023
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 1036
    :cond_5
    :goto_5
    return-void

    .line 1026
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BoundPort method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 1028
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v1, p5, p6}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 1029
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900008

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1031
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1032
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1033
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1034
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1035
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public cancelAdvertiseService(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 686
    const-string v0, "WfdsManager"

    const-string v1, "cancelAdvertiseService method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 688
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900003

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 689
    return-void
.end method

.method public cancelConnectSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 10
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 839
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 851
    :cond_5
    :goto_5
    return-void

    .line 842
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cancelConnectSessions method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 844
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x90000f

    iput v2, v0, Landroid/os/Message;->what:I

    .line 846
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 847
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 848
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 849
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 850
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public cancelSeekService(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 783
    const-string v0, "WfdsManager"

    const-string v1, "cancelSeekService method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 785
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90000a

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 786
    return-void
.end method

.method public closeSession(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 10
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 994
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 1006
    :cond_5
    :goto_5
    return-void

    .line 997
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closeSession method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 999
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1000
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900007

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1001
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1002
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1003
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1004
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1005
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public confirmListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "iChannel"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 1144
    const-string v0, "WfdsManager"

    const-string v1, "confirmListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1146
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90005e

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1147
    return-void
.end method

.method public confirmSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;IZLjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 14
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "confirmed"    # Z
    .param p5, "pinNumber"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    const v6, 0x90000d

    .line 871
    if-eqz p2, :cond_8

    const/4 v3, -0x1

    if-ne p3, v3, :cond_9

    .line 909
    :cond_8
    :goto_8
    return-void

    .line 874
    :cond_9
    const-string v3, "WfdsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConfirmSessions method called "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 875
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 874
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 878
    .local v1, "msg":Landroid/os/Message;
    if-nez p3, :cond_7e

    .line 879
    iput v6, v1, Landroid/os/Message;->what:I

    .line 880
    if-eqz p4, :cond_7b

    .line 881
    if-eqz p5, :cond_78

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "true "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "confirmMsg":Ljava/lang/String;
    :goto_56
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "confirmMsg"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :goto_5f
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 901
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p6}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 903
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 904
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_99

    .line 905
    iget-object v3, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_8

    .line 884
    :cond_78
    const-string v0, "true"

    .line 886
    .restart local v0    # "confirmMsg":Ljava/lang/String;
    goto :goto_56

    .line 887
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :cond_7b
    const-string v0, "false"

    .restart local v0    # "confirmMsg":Ljava/lang/String;
    goto :goto_56

    .line 891
    .end local v0    # "confirmMsg":Ljava/lang/String;
    :cond_7e
    new-instance v2, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v2, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 892
    .local v2, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz p4, :cond_93

    .line 893
    const v3, 0x900006

    iput v3, v1, Landroid/os/Message;->what:I

    .line 897
    :goto_8a
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_5f

    .line 895
    :cond_93
    const v3, 0x90000b

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_8a

    .line 907
    .end local v2    # "session":Lcom/lge/wfds/session/AspSession;
    :cond_99
    iget-object v3, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_8
.end method

.method public connectSessions(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsIntStrListener;)V
    .registers 16
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "role"    # I
    .param p6, "config"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntStrListener;

    .prologue
    .line 812
    if-nez p2, :cond_3

    .line 830
    :goto_2
    return-void

    .line 816
    :cond_3
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 818
    .local v7, "strId":Ljava/lang/String;
    const-string v1, "WfdsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectSessions method called "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v0, Lcom/lge/wfds/WfdsPdMethod;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/lge/wfds/WfdsPdMethod;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 822
    .local v0, "method":Lcom/lge/wfds/WfdsPdMethod;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 823
    .local v6, "msg":Landroid/os/Message;
    const v1, 0x900005

    iput v1, v6, Landroid/os/Message;->what:I

    .line 824
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 825
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v6, Landroid/os/Message;->arg2:I

    .line 826
    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 828
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 829
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public createGroup(Lcom/lge/wfds/WfdsManager$Channel;ILjava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 8
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "channel"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 918
    const-string v1, "WfdsManager"

    const-string v2, "createGroup method is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 920
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900037

    iput v1, v0, Landroid/os/Message;->what:I

    .line 921
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 922
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 923
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 926
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 927
    return-void
.end method

.method public deinitEventListener(I)V
    .registers 3
    .param p1, "listenerId"    # I

    .prologue
    .line 551
    :try_start_0
    sget-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v0, :cond_9

    .line 552
    sget-object v0, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v0, p1}, Lcom/lge/wfds/IWfdsManager;->deinitEventListener(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 557
    :cond_9
    :goto_9
    return-void

    .line 555
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public disconnectSession(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 6
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1074
    const-string v1, "WfdsManager"

    const-string v2, "disconnectSession method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1076
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90000e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1077
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1078
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1079
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1080
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1081
    return-void
.end method

.method public getConnectCapability(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 6
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 587
    const-string v1, "WfdsManager"

    const-string v2, "getConnectCapability method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 589
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900034

    iput v1, v0, Landroid/os/Message;->what:I

    .line 590
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 591
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 592
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 593
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 594
    return-void
.end method

.method public getDeviceAddress(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsStrListener;)V
    .registers 6
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsStrListener;

    .prologue
    .line 1094
    const-string v1, "WfdsManager"

    const-string v2, "getDeviceAddress method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1096
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90005b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1097
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1098
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1099
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1100
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1101
    return-void
.end method

.method public getDisplayPin(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 6
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 611
    const-string v1, "WfdsManager"

    const-string v2, "get Display PIN: method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900036

    iput v1, v0, Landroid/os/Message;->what:I

    .line 614
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 615
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 616
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 617
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 618
    return-void
.end method

.method public getListenChannel(Lcom/lge/wfds/WfdsManager$Channel;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 6
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 1112
    const-string v1, "WfdsManager"

    const-string v2, "getListenChannel method called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1114
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x90005c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1115
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1116
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1117
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1118
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1119
    return-void
.end method

.method public getSession(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsAspSessionListener;)V
    .registers 10
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "sessionMac"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsAspSessionListener;

    .prologue
    .line 941
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 954
    :cond_5
    :goto_5
    return-void

    .line 944
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetSession method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 947
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 948
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x90000c

    iput v2, v0, Landroid/os/Message;->what:I

    .line 949
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 950
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 951
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 952
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 953
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/lge/wfds/IWfdsEventListener;

    .prologue
    const/4 v0, -0x1

    .line 527
    if-eqz p1, :cond_1f

    .line 529
    :try_start_3
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    if-eqz v1, :cond_e

    .line 530
    sget-object v1, Lcom/lge/wfds/WfdsManager;->mWfdsService:Lcom/lge/wfds/IWfdsManager;

    invoke-interface {v1, p1}, Lcom/lge/wfds/IWfdsManager;->initEventListener(Lcom/lge/wfds/IWfdsEventListener;)I

    move-result v0

    .line 541
    :goto_d
    return v0

    .line 532
    :cond_e
    const-string v1, "WfdsManager"

    const-string v2, "initEventListener mWfdsService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_d

    .line 535
    :catch_16
    move-exception v1

    const-string v1, "WfdsManager"

    const-string v2, "initEventListener RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 539
    :cond_1f
    const-string v1, "WfdsManager"

    const-string v2, "initEventListener listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)Lcom/lge/wfds/WfdsManager$Channel;
    .registers 10
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsChannelListener;

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-direct {p0}, Lcom/lge/wfds/WfdsManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 500
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_9

    move-object v0, v3

    .line 516
    :cond_8
    :goto_8
    return-object v0

    .line 504
    :cond_9
    invoke-direct {p0}, Lcom/lge/wfds/WfdsManager;->getSessionMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 505
    .local v2, "sessionMessenger":Landroid/os/Messenger;
    if-nez v2, :cond_11

    move-object v0, v3

    .line 506
    goto :goto_8

    .line 509
    :cond_11
    new-instance v0, Lcom/lge/wfds/WfdsManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/wfds/WfdsManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/lge/wfds/WfdsManager$WfdsChannelListener;)V

    .line 510
    .local v0, "c":Lcom/lge/wfds/WfdsManager$Channel;
    iget-object v4, v0, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mHandler:Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
    invoke-static {v0}, Lcom/lge/wfds/WfdsManager$Channel;->access$3(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v4

    if-nez v4, :cond_2e

    .line 512
    iget-object v4, v0, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/lge/wfds/WfdsManager$Channel;->mHandler:Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;
    invoke-static {v0}, Lcom/lge/wfds/WfdsManager$Channel;->access$3(Lcom/lge/wfds/WfdsManager$Channel;)Lcom/lge/wfds/WfdsManager$Channel$WfdsHandler;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v4

    if-eqz v4, :cond_8

    :cond_2e
    move-object v0, v3

    .line 516
    goto :goto_8
.end method

.method public releasePort(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 13
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "proto"    # I
    .param p7, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1054
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 1067
    :cond_5
    :goto_5
    return-void

    .line 1057
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ReleasePort method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3, p4}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1059
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {v1, p5, p6}, Lcom/lge/wfds/session/AspSession;->addPort(II)V

    .line 1060
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1061
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900009

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1062
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1063
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p7}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1064
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1065
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1066
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public seekService(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/lge/wfds/WfdsManager$WfdsIntListener;)V
    .registers 11
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "search"    # I
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "req"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsIntListener;

    .prologue
    .line 744
    const-string v2, "WfdsManager"

    const-string v3, "SeekService method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-nez p2, :cond_a

    .line 769
    :goto_9
    return-void

    .line 750
    :cond_a
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(Ljava/lang/String;I)V

    .line 753
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-nez v2, :cond_1e

    .line 754
    :cond_16
    const-string v2, "WfdsManager"

    const-string v3, "SeekService is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 757
    :cond_1e
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setSearchMethod(I)V

    .line 758
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p4}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setP2pAddress(Ljava/lang/String;)V

    .line 759
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v2, p5}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setServiceInfoRequest(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 762
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900004

    iput v2, v1, Landroid/os/Message;->what:I

    .line 763
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 764
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p6}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 765
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 767
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 768
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_9
.end method

.method public serviceStatusChange(Lcom/lge/wfds/WfdsManager$Channel;IILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 9
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "id"    # I
    .param p3, "status"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 705
    const-string v2, "WfdsManager"

    const-string v3, "ServiceStatusChange method called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>(II)V

    .line 710
    .local v0, "method":Lcom/lge/wfds/WfdsDiscoveryMethod;
    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-nez v2, :cond_1b

    .line 711
    :cond_13
    const-string v2, "WfdsManager"

    const-string v3, "ServiceStatusChange is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_1a
    return-void

    .line 714
    :cond_1b
    iget-object v2, v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v2, p3}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setServiceStatus(I)V

    .line 716
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 717
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x900002

    iput v2, v1, Landroid/os/Message;->what:I

    .line 718
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 719
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 720
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 722
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 723
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_1a
.end method

.method public setConfigMethod(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "method"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 601
    const-string v0, "WfdsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setConfigMethod is called: method ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 603
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900035

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 604
    return-void
.end method

.method public setConnectCapability(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "val"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 572
    const-string v0, "WfdsManager"

    const-string v1, "setConnectCapability method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 574
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900033

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 575
    return-void
.end method

.method public setListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "iChannel"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1130
    const-string v0, "WfdsManager"

    const-string v1, "setListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1132
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x90005d

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1133
    return-void
.end method

.method public setSesstionReady(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/String;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 10
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 968
    if-eqz p2, :cond_5

    const/4 v2, -0x1

    if-ne p3, v2, :cond_6

    .line 980
    :cond_5
    :goto_5
    return-void

    .line 971
    :cond_6
    const-string v2, "WfdsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetSesstionReady method called "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v1, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v1, p2, p3}, Lcom/lge/wfds/session/AspSession;-><init>(Ljava/lang/String;I)V

    .line 973
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 974
    .local v0, "msg":Landroid/os/Message;
    const v2, 0x900006

    iput v2, v0, Landroid/os/Message;->what:I

    .line 975
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 976
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 977
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 978
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 979
    iget-object v2, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannelSession:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5
.end method

.method public setWfdsCertificationMode(Lcom/lge/wfds/WfdsManager$Channel;ZLcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 8
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "isCertiMode"    # Z
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1174
    const-string v1, "WfdsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWfdsCertificationMode method called ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1176
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x900039

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1177
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsManager$Channel;->getEventListenerId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1178
    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1179
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1181
    iget-object v1, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1182
    return-void
.end method

.method public setWfdsListenChannel(Lcom/lge/wfds/WfdsManager$Channel;ILcom/lge/wfds/WfdsManager$WfdsActionListener;)V
    .registers 7
    .param p1, "c"    # Lcom/lge/wfds/WfdsManager$Channel;
    .param p2, "listenChn"    # I
    .param p3, "listener"    # Lcom/lge/wfds/WfdsManager$WfdsActionListener;

    .prologue
    .line 1159
    const-string v0, "WfdsManager"

    const-string v1, "setWfdsListenChannel method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {p1}, Lcom/lge/wfds/WfdsManager;->checkChannel(Lcom/lge/wfds/WfdsManager$Channel;)V

    .line 1161
    iget-object v0, p1, Lcom/lge/wfds/WfdsManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x900038

    # invokes: Lcom/lge/wfds/WfdsManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Lcom/lge/wfds/WfdsManager$Channel;->access$4(Lcom/lge/wfds/WfdsManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1162
    return-void
.end method
