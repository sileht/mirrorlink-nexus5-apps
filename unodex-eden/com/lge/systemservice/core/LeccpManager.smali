.class public Lcom/lge/systemservice/core/LeccpManager;
.super Ljava/lang/Object;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpManager$LeccpListener;,
        Lcom/lge/systemservice/core/LeccpManager$LeccpListenerId;,
        Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;,
        Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_SERVER_STATE_CHANGED:Ljava/lang/String; = "com.lge.leccp.ble.server.STATE_CHANGED"

.field public static final ACTION_REASON_ACCESS_DENIED:I = -0x6

.field public static final ACTION_REASON_CONNECTION_FAIL:I = -0x4

.field public static final ACTION_REASON_INVALID_CONTENT:I = -0x5

.field public static final ACTION_REASON_NOT_FOUND:I = -0x2

.field public static final ACTION_REASON_NOT_SUPPORTED_ACTION:I = -0x7

.field public static final ACTION_REASON_REGISTRATION_FAIL:I = -0x3

.field public static final ACTION_REASON_REQUEST_CANCELED:I = -0x8

.field public static final ACTION_REASON_SERVICE_FAIL:I = -0x9

.field public static final ACTION_REASON_SUCCESS:I = 0x0

.field public static final ACTION_REASON_UNKNOWN:I = -0x1

.field public static final ACTION_TRANSFER_COMPLETE:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_COMPLETE"

.field public static final ACTION_TRANSFER_EXPIRED_REQUEST:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_EXPIRED_REQUEST"

.field public static final ACTION_TRANSFER_EXPIRED_RESPONSE:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_EXPIRED_RESPONSE"

.field public static final ACTION_TRANSFER_RECEIVE_REQUEST:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_RECEIVE_REQUEST"

.field public static final ACTION_TRANSFER_RECEIVE_RESPONSE:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_RECEIVE_RESPONSE"

.field public static final ACTION_TRANSFER_START:Ljava/lang/String; = "com.lge.leccp.intent.action.TRANSFER_START"

.field public static final DEVICE_TYPE_CAMERA:I = 0xa

.field public static final DEVICE_TYPE_COMPUTER:I = 0x5

.field public static final DEVICE_TYPE_DISPLAY:I = 0xf

.field public static final DEVICE_TYPE_GLASS:I = 0x4

.field public static final DEVICE_TYPE_HEADSET:I = 0x11

.field public static final DEVICE_TYPE_INPUT_DEVICE:I = 0x8

.field public static final DEVICE_TYPE_KEYBOARD:I = 0x6

.field public static final DEVICE_TYPE_MONITOR:I = 0xe

.field public static final DEVICE_TYPE_MOUSE:I = 0x7

.field public static final DEVICE_TYPE_MULTIMEDIA_DEVICE:I = 0x10

.field public static final DEVICE_TYPE_NETWORK_INFRASTRUCTURE:I = 0xc

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field public static final DEVICE_TYPE_PRINTER:I = 0x9

.field public static final DEVICE_TYPE_SPEAKER:I = 0x12

.field public static final DEVICE_TYPE_STORAGE:I = 0xb

.field public static final DEVICE_TYPE_TABLET:I = 0x2

.field public static final DEVICE_TYPE_TV:I = 0xd

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final DEVICE_TYPE_WATCH:I = 0x3

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x0

.field public static final EXTRA_CARD_ID:Ljava/lang/String; = "com.lge.leccp.extra.CARD_ID"

.field public static final EXTRA_DIRECTION:Ljava/lang/String; = "com.lge.leccp.extra.DIRECTION"

.field public static final EXTRA_IDS:Ljava/lang/String; = "com.lge.leccp.extra.IDS"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "com.lge.leccp.extra.PREVIOUS_STATE"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "com.lge.leccp.extra.REQUEST_ID"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.lge.leccp.extra.RESULT"

.field public static final EXTRA_SERVICE_INFO_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_SERVICE_INFO_IS_ON:Ljava/lang/String; = "isOn"

.field public static final EXTRA_SERVICE_INFO_PACKAGE_NAME:Ljava/lang/String; = "packagName"

.field public static final EXTRA_SERVICE_INFO_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_SERVICE_TYPE:Ljava/lang/String; = "com.lge.leccp.extra.SERVICE_TYPE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.lge.leccp.extra.STATE"

.field public static final EXTRA_TIMEOUT:Ljava/lang/String; = "com.lge.leccp.extra.TIMEOUT"

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.leccp"

.field public static final LECCP_GET_SERVICE_INFO_ACTION:Ljava/lang/String; = "com.lge.leccp.GET_SERVICE_INFO_ACTION"

.field public static final LECCP_SET_SERVICE_INFO_ACTION:Ljava/lang/String; = "com.lge.leccp.SET_SERVICE_INFO_ACTION"

.field public static final LECCP_USE_SERVICE_INFO_ACTION:Ljava/lang/String; = "com.lge.leccp.use.USE_SERVICE_INFO_ACTION"

.field public static final RESULT_NEGATIVE:I = 0x1

.field public static final RESULT_POSITIVE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "leccp"

.field public static final SERVICE_TYPE_AIR_DRIVE:I = 0xe

.field public static final SERVICE_TYPE_ANDROID_WEAR:I = 0x9

.field public static final SERVICE_TYPE_BLUETOOTH:I = 0x0

.field public static final SERVICE_TYPE_CASTPLAY:I = 0xa

.field public static final SERVICE_TYPE_CROMECAST:I = 0x6

.field public static final SERVICE_TYPE_DLNA:I = 0x8

.field public static final SERVICE_TYPE_DLNA_UDO:I = 0xc

.field public static final SERVICE_TYPE_LGP2P:I = 0xb

.field public static final SERVICE_TYPE_MIRACAST:I = 0x2

.field public static final SERVICE_TYPE_MUSIC_SHARE:I = 0x7

.field public static final SERVICE_TYPE_QPAIR:I = 0x3

.field public static final SERVICE_TYPE_QREMOTE:I = 0x4

.field public static final SERVICE_TYPE_SMARTSHARE_BEAM:I = 0x1

.field public static final SERVICE_TYPE_SMARTSHARE_BEAM_RECEIVER:I = 0xd

.field public static final SERVICE_TYPE_WATCH_MANAGER:I = 0x5

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field public static final SUB_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static final VERSION_CODE:I = 0x18a8a

.field public static sIsLogServiceEnable:Z

.field private static sListenerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/systemservice/core/LeccpManager$LeccpListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

.field private mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

.field private mILeccpManagerListener:Lcom/lge/systemservice/core/ILeccpManagerListener;

.field private mMessageLock:Ljava/lang/Object;

.field private mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 56
    const-class v1, Lcom/lge/systemservice/core/LeccpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    .line 532
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    .line 533
    sput-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    .line 536
    const-string v1, "persist.service.main.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    :cond_34
    sput-boolean v0, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    .line 538
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "LeccpManager version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x18a8a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    .line 525
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    .line 526
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 527
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;

    .line 545
    new-instance v1, Lcom/lge/systemservice/core/LeccpManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LeccpManager$1;-><init>(Lcom/lge/systemservice/core/LeccpManager;)V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManagerListener:Lcom/lge/systemservice/core/ILeccpManagerListener;

    .line 713
    new-instance v0, Lcom/lge/systemservice/core/LeccpManager$3;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpManager$3;-><init>(Lcom/lge/systemservice/core/LeccpManager;)V

    .line 731
    .local v0, "listenerThread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 733
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/ILeccpManager;)V
    .registers 5
    .param p1, "iLeccpManager"    # Lcom/lge/systemservice/core/ILeccpManager;

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    .line 525
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    .line 526
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    .line 527
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;

    .line 545
    new-instance v1, Lcom/lge/systemservice/core/LeccpManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LeccpManager$1;-><init>(Lcom/lge/systemservice/core/LeccpManager;)V

    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManagerListener:Lcom/lge/systemservice/core/ILeccpManagerListener;

    .line 687
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    .line 689
    new-instance v0, Lcom/lge/systemservice/core/LeccpManager$2;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpManager$2;-><init>(Lcom/lge/systemservice/core/LeccpManager;)V

    .line 707
    .local v0, "listenerThread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 709
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/LeccpManager;I[Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 850
    invoke-direct {p0, p1, p2}, Lcom/lge/systemservice/core/LeccpManager;->onLeccpListener(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(ILjava/lang/Object;)V
    .registers 2

    .prologue
    .line 870
    invoke-static {p0, p1}, Lcom/lge/systemservice/core/LeccpManager;->onLeccpListenerMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/systemservice/core/LeccpManager;Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;)V
    .registers 2

    .prologue
    .line 525
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/systemservice/core/LeccpManager;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/systemservice/core/LeccpManager;)Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/systemservice/core/LeccpManager;Lcom/lge/systemservice/core/ILeccpManager;)V
    .registers 2

    .prologue
    .line 523
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILeccpManager;
    .registers 4

    .prologue
    .line 736
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    if-nez v0, :cond_23

    .line 738
    const-string v0, "leccp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILeccpManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v0

    .line 737
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    .line 739
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    if-eqz v0, :cond_23

    .line 741
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILeccpManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/LeccpManager$4;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LeccpManager$4;-><init>(Lcom/lge/systemservice/core/LeccpManager;)V

    .line 746
    const/4 v2, 0x0

    .line 741
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 753
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    return-object v0

    .line 748
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManager:Lcom/lge/systemservice/core/ILeccpManager;

    goto :goto_23
.end method

.method private varargs onLeccpListener(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "objList"    # [Ljava/lang/Object;

    .prologue
    .line 851
    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 852
    :try_start_3
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    if-nez v1, :cond_17

    .line 853
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 854
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 855
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 856
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 857
    monitor-exit v2

    .line 862
    .end local v0    # "message":Landroid/os/Message;
    :goto_16
    return-void

    .line 851
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    .line 861
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    invoke-virtual {v2, p1, p2}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 851
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private static onLeccpListenerMessage(ILjava/lang/Object;)V
    .registers 12
    .param p0, "type"    # I
    .param p1, "objListElement"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 871
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 872
    .local v3, "objList":[Ljava/lang/Object;
    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 873
    .local v1, "enumer":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/lge/systemservice/core/LeccpManager$LeccpListener;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_12

    .line 919
    :goto_11
    return-void

    .line 874
    :cond_12
    const/4 v2, 0x0

    .line 877
    .local v2, "listener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :try_start_13
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    check-cast v2, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_25

    .line 883
    .restart local v2    # "listener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    packed-switch p0, :pswitch_data_b0

    goto :goto_b

    .line 885
    :pswitch_1d
    aget-object v4, v3, v8

    check-cast v4, Lcom/lge/systemservice/core/LeccpInfo$Status;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onStatusChanged(Lcom/lge/systemservice/core/LeccpInfo$Status;)V

    goto :goto_b

    .line 878
    .end local v2    # "listener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :catch_25
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "onDlnaListenerMessage exceptional case: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 888
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "listener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :pswitch_49
    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onBLEServerStatusChanged(Z)V

    goto :goto_b

    .line 891
    :pswitch_55
    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v9

    check-cast v5, Ljava/lang/String;

    .line 892
    const/4 v6, 0x2

    aget-object v6, v3, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v6, 0x3

    aget-object v6, v3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 891
    invoke-virtual {v2, v4, v5, v7, v6}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onResponseAction(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_b

    .line 895
    :pswitch_73
    aget-object v4, v3, v8

    check-cast v4, Lcom/lge/systemservice/core/LeccpInfo$Card;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onMyCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V

    goto :goto_b

    .line 898
    :pswitch_7b
    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onMyCardRemoved(Ljava/lang/String;)V

    goto :goto_b

    .line 901
    :pswitch_83
    aget-object v4, v3, v8

    check-cast v4, Lcom/lge/systemservice/core/LeccpInfo$Card;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onCardAdded(Lcom/lge/systemservice/core/LeccpInfo$Card;)V

    goto :goto_b

    .line 904
    :pswitch_8b
    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onCardRemoved(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 907
    :pswitch_94
    aget-object v4, v3, v8

    check-cast v4, Lcom/lge/systemservice/core/LeccpInfo$Card;

    invoke-virtual {v2, v4}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onCardUpdated(Lcom/lge/systemservice/core/LeccpInfo$Card;)V

    goto/16 :goto_b

    .line 910
    :pswitch_9d
    aget-object v4, v3, v8

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v9

    check-cast v5, Lcom/lge/systemservice/core/LeccpInfo$Action;

    invoke-virtual {v2, v4, v5}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onCardActionUpdated(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$Action;)V

    goto/16 :goto_b

    .line 913
    :pswitch_aa
    invoke-virtual {v2}, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;->onDeadListenerCheck()V

    goto/16 :goto_b

    .line 883
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_49
        :pswitch_55
        :pswitch_73
        :pswitch_7b
        :pswitch_83
        :pswitch_8b
        :pswitch_94
        :pswitch_9d
        :pswitch_aa
    .end packed-switch
.end method

.method public static responseGetServiceInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceType"    # I
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "isOn"    # Z

    .prologue
    .line 1483
    if-eqz p0, :cond_4

    if-nez p1, :cond_1f

    .line 1484
    :cond_4
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "responseGetServiceInfo has null context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_1e
    return-void

    .line 1488
    :cond_1f
    sget-boolean v1, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v1, :cond_5f

    .line 1489
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "responseGetServiceInfo packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1490
    const-string v3, ", serviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1491
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_5f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.leccp.SET_SERVICE_INFO_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.leccp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    const-string v1, "packagName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1498
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    const-string v1, "isOn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1501
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e
.end method

.method public static sendUsedServiceInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceType"    # I
    .param p3, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 1517
    if-eqz p0, :cond_4

    if-nez p1, :cond_1f

    .line 1518
    :cond_4
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sendUsedServiceInfo has null context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :goto_1e
    return-void

    .line 1522
    :cond_1f
    sget-boolean v1, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v1, :cond_55

    .line 1523
    sget-object v1, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sendUsedServiceInfo packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1524
    const-string v3, ", serviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.leccp.use.USE_SERVICE_INFO_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packagName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e
.end method


# virtual methods
.method public addMyCard(Ljava/lang/String;)Z
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1251
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1252
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "addMyCard get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_21
    return v2

    .line 1256
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_44

    .line 1257
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "addMyCard cardId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_44
    :try_start_44
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->addMyCard(Ljava/lang/String;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_49

    move-result v2

    goto :goto_21

    .line 1262
    :catch_49
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "addMyCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public clearMyCard()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1304
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1305
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "clearMyCard get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :goto_21
    return v2

    .line 1309
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 1310
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "clearMyCard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->clearMyCard()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45

    move-result v2

    goto :goto_21

    .line 1315
    :catch_45
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "clearMyCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public discoverService(I)V
    .registers 7
    .param p1, "serviceType"    # I

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1114
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1115
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "discoverService get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_20
    return-void

    .line 1119
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_43

    .line 1120
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "discoverService serviceType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_43
    :try_start_43
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->discoverService(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_20

    .line 1125
    :catch_47
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "discoverService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public getBLEServerState()I
    .registers 7

    .prologue
    const/16 v2, 0xa

    .line 981
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 982
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_23

    .line 983
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getBLEServerState get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_22
    return v2

    .line 987
    :cond_23
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_41

    .line 988
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getBLEServerState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_41
    :try_start_41
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->getBLEServerState()I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_46

    move-result v2

    goto :goto_22

    .line 993
    :catch_46
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getBLEServerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public getCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v2

    .line 1166
    .local v2, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v2, :cond_22

    .line 1167
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCards get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x0

    .line 1182
    :goto_21
    return-object v0

    .line 1171
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_44

    .line 1172
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCard cardId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_44
    const/4 v0, 0x0

    .line 1177
    .local v0, "card":Lcom/lge/systemservice/core/LeccpInfo$Card;
    :try_start_45
    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILeccpManager;->getCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a

    move-result-object v0

    goto :goto_21

    .line 1178
    :catch_4a
    move-exception v1

    .line 1179
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getCards()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v2

    .line 1138
    .local v2, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v2, :cond_22

    .line 1139
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCards get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v0, 0x0

    .line 1154
    :goto_21
    return-object v0

    .line 1143
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 1144
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_40
    const/4 v0, 0x0

    .line 1149
    .local v0, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    :try_start_41
    invoke-interface {v2}, Lcom/lge/systemservice/core/ILeccpManager;->getCards()Ljava/util/List;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_21

    .line 1150
    :catch_46
    move-exception v1

    .line 1151
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getMyCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1221
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1222
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCard get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v2, 0x0

    .line 1237
    :goto_21
    return-object v2

    .line 1226
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_44

    .line 1227
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCard cardId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_44
    const/4 v2, 0x0

    .line 1232
    .local v2, "myCard":Lcom/lge/systemservice/core/LeccpInfo$Card;
    :try_start_45
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->getMyCard(Ljava/lang/String;)Lcom/lge/systemservice/core/LeccpInfo$Card;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a

    move-result-object v2

    goto :goto_21

    .line 1233
    :catch_4a
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getMyCards()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1193
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1194
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCards get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v2, 0x0

    .line 1209
    :goto_21
    return-object v2

    .line 1198
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 1199
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_40
    const/4 v2, 0x0

    .line 1204
    .local v2, "myCards":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/LeccpInfo$Card;>;"
    :try_start_41
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->getMyCards()Ljava/util/List;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_46

    move-result-object v2

    goto :goto_21

    .line 1205
    :catch_46
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getMyCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public getStatus()Lcom/lge/systemservice/core/LeccpInfo$Status;
    .registers 7

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 929
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 930
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "unregister get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v2, 0x0

    .line 944
    :goto_21
    return-object v2

    .line 934
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 935
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_40
    const/4 v2, 0x0

    .line 940
    .local v2, "status":Lcom/lge/systemservice/core/LeccpInfo$Status;
    :try_start_41
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->getStatus()Lcom/lge/systemservice/core/LeccpInfo$Status;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_46

    move-result-object v2

    goto :goto_21

    .line 941
    :catch_46
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "getStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public isBLEServerEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 955
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 956
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 957
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isBLEServerEnabled get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_21
    return v2

    .line 961
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 962
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isBLEServerEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->isBLEServerEnabled()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45

    move-result v2

    goto :goto_21

    .line 967
    :catch_45
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isBLEServerEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public isFriendCheck()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1399
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1400
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1401
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isFriendCheck get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :goto_21
    return v2

    .line 1405
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 1406
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isFriendCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->isFriendCheck()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45

    move-result v2

    goto :goto_21

    .line 1411
    :catch_45
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isFriendCheck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public isPhoneSpeakerEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1425
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1426
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1427
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isPhoneSpeakerEnabled get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :goto_21
    return v2

    .line 1431
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_40

    .line 1432
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isPhoneSpeakerEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->isPhoneSpeakerEnabled()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45

    move-result v2

    goto :goto_21

    .line 1437
    :catch_45
    move-exception v0

    .line 1438
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "isPhoneSpeakerEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public query(Landroid/content/Context;Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;)Landroid/database/Cursor;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "query"    # Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;

    .prologue
    .line 1826
    if-eqz p1, :cond_4

    if-nez p2, :cond_20

    .line 1827
    :cond_4
    sget-object v0, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "query has null context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/4 v0, 0x0

    .line 1831
    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p2, p1}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->query(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1f
.end method

.method public register(Lcom/lge/systemservice/core/LeccpManager$LeccpListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/lge/systemservice/core/LeccpManager$LeccpListener;

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 765
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 766
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "register get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_20
    return-void

    .line 770
    :cond_21
    if-nez p1, :cond_3e

    .line 771
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "register null parameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 775
    :cond_3e
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_74

    .line 776
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "register listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 777
    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_74
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    monitor-enter v3

    .line 781
    :try_start_77
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_97

    move-result v2

    if-eqz v2, :cond_88

    .line 783
    :try_start_7f
    iget-object v2, p0, Lcom/lge/systemservice/core/LeccpManager;->mILeccpManagerListener:Lcom/lge/systemservice/core/ILeccpManagerListener;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-interface {v1, v2, v4}, Lcom/lge/systemservice/core/ILeccpManager;->register(Lcom/lge/systemservice/core/ILeccpManagerListener;I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_88} :catch_9a
    .catchall {:try_start_7f .. :try_end_88} :catchall_97

    .line 789
    :cond_88
    :goto_88
    :try_start_88
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    monitor-exit v3

    goto :goto_20

    :catchall_97
    move-exception v2

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_97

    throw v2

    .line 784
    :catch_9a
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9b
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_9b .. :try_end_bd} :catchall_97

    goto :goto_88
.end method

.method public varargs remove(Landroid/content/Context;[J)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    .line 1844
    if-nez p1, :cond_1e

    .line 1845
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "remove has null context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v2, -0x1

    .line 1865
    :goto_1d
    return v2

    .line 1849
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1850
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_26

    .line 1851
    const/4 v2, -0x2

    goto :goto_1d

    .line 1854
    :cond_26
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_48

    .line 1855
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "remove ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_48
    :try_start_48
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->CONTENT_URI:Landroid/net/Uri;

    .line 1860
    const-string v3, "_id"

    invoke-static {v3, p2}, Lcom/lge/systemservice/core/LeccpManager$QueryTransfer;->getWhereClause(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1859
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_56

    move-result v2

    goto :goto_1d

    .line 1861
    :catch_56
    move-exception v1

    .line 1862
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1865
    const/4 v2, -0x3

    goto :goto_1d
.end method

.method public removeMyCard(Ljava/lang/String;)Z
    .registers 8
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1278
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1279
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1280
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "removeMyCard get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_21
    return v2

    .line 1284
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_44

    .line 1285
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "removeMyCard cardId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_44
    :try_start_44
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->removeMyCard(Ljava/lang/String;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_49

    move-result v2

    goto :goto_21

    .line 1290
    :catch_49
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "removeMyCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public requestAction(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;)Ljava/lang/String;
    .registers 9
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "actionRequestData"    # Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    .prologue
    const/4 v2, 0x0

    .line 1348
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1349
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_22

    .line 1350
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "requestAction get service fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_21
    return-object v2

    .line 1354
    :cond_22
    sget-boolean v3, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v3, :cond_44

    .line 1355
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "requestAction cardId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_44
    :try_start_44
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/ILeccpManager;->requestAction(Ljava/lang/String;Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_49

    move-result-object v2

    goto :goto_21

    .line 1360
    :catch_49
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "requestAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public setBLEServerEnabled(Z)V
    .registers 7
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1008
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1009
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setBLEServerEnabled get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_20
    return-void

    .line 1013
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_43

    .line 1014
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setBLEServerEnabled isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_43
    :try_start_43
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->setBLEServerEnabled(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_20

    .line 1019
    :catch_47
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setBLEServerEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setFriendCheck(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1376
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1377
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setFriendCheck get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_20
    return-void

    .line 1381
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_43

    .line 1382
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setFriendCheck enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_43
    :try_start_43
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->setFriendCheck(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_20

    .line 1387
    :catch_47
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setFriendCheck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setPhoneSpeakerEnabled(Z)V
    .registers 7
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1453
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1454
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setPhoneSpeakerEnabled get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :goto_20
    return-void

    .line 1458
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_43

    .line 1459
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setPhoneSpeakerEnabled isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_43
    :try_start_43
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/ILeccpManager;->setPhoneSpeakerEnabled(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_20

    .line 1464
    :catch_47
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "setPhoneSpeakerEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public startDiscovery()V
    .registers 6

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1031
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1032
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "startDiscovery get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_20
    return-void

    .line 1036
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_3f

    .line 1037
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "startDiscovery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->startDiscovery()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_20

    .line 1042
    :catch_43
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "startDiscovery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public startDiscovery(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p1, "serviceTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v2

    .line 1055
    .local v2, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v2, :cond_21

    .line 1056
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "startDiscovery get service fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_20
    return-void

    .line 1060
    :cond_21
    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1061
    :cond_29
    invoke-virtual {p0}, Lcom/lge/systemservice/core/LeccpManager;->startDiscovery()V

    goto :goto_20

    .line 1065
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 1067
    .local v3, "param":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_89

    .line 1072
    sget-boolean v5, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v5, :cond_61

    .line 1073
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "startDiscovery serviceTypes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_61
    :try_start_61
    invoke-interface {v2, v3}, Lcom/lge/systemservice/core/ILeccpManager;->startDiscoveryWithServices([I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_20

    .line 1078
    :catch_65
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "startDiscovery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1068
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_89
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_39
.end method

.method public stopDiscovery()V
    .registers 6

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 1090
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 1091
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "stopDiscovery get service fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_20
    return-void

    .line 1095
    :cond_21
    sget-boolean v2, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v2, :cond_3f

    .line 1096
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "stopDiscovery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_3f
    :try_start_3f
    invoke-interface {v1}, Lcom/lge/systemservice/core/ILeccpManager;->stopDiscovery()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_20

    .line 1101
    :catch_43
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "stopDiscovery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public unregister(Lcom/lge/systemservice/core/LeccpManager$LeccpListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/lge/systemservice/core/LeccpManager$LeccpListener;

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/lge/systemservice/core/LeccpManager;->getService()Lcom/lge/systemservice/core/ILeccpManager;

    move-result-object v1

    .line 802
    .local v1, "iLeccpManager":Lcom/lge/systemservice/core/ILeccpManager;
    if-nez v1, :cond_21

    .line 803
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "unregister get service fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_20
    return-void

    .line 807
    :cond_21
    if-nez p1, :cond_3e

    .line 808
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "unregister listener is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 812
    :cond_3e
    sget-object v6, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    monitor-enter v6

    .line 813
    :try_start_41
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemservice/core/LeccpManager$LeccpListener;

    .line 814
    .local v3, "leccpListener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    if-eqz v3, :cond_9d

    .line 815
    sget-boolean v5, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v5, :cond_89

    .line 816
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "unregister listener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 817
    sget-object v8, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 816
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_89
    :goto_89
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_8e
    .catchall {:try_start_41 .. :try_end_8e} :catchall_9a

    move-result v5

    if-eqz v5, :cond_e4

    .line 827
    :try_start_91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/lge/systemservice/core/ILeccpManager;->unregister(I)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_c0
    .catchall {:try_start_91 .. :try_end_98} :catchall_9a

    .line 812
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit v6

    goto :goto_20

    .end local v3    # "leccpListener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :catchall_9a
    move-exception v5

    monitor-exit v6
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9a

    throw v5

    .line 820
    .restart local v3    # "leccpListener":Lcom/lge/systemservice/core/LeccpManager$LeccpListener;
    :cond_9d
    :try_start_9d
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    .line 821
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "unregister listener not in sListenerTable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 822
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 821
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 820
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 828
    :catch_c0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "unregister: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .local v4, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->sListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_11d

    .line 837
    sget-boolean v5, Lcom/lge/systemservice/core/LeccpManager;->sIsLogServiceEnable:Z

    if-eqz v5, :cond_98

    .line 838
    sget-object v5, Lcom/lge/systemservice/core/LeccpManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/lge/systemservice/core/LeccpManager;->SUB_TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "unregister remain listener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_98

    .line 833
    :cond_11d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 834
    .local v2, "key":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_139
    .catchall {:try_start_9d .. :try_end_139} :catchall_9a

    goto :goto_f3
.end method
