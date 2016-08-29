.class public Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
.super Ljava/lang/Object;
.source "CommonAPIManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/commonapi/DeviceInfoListener;
.implements Lcom/lge/mirrorlink/commonapi/DisplayListener;
.implements Lcom/lge/mirrorlink/commonapi/DeviceStatusListener;
.implements Lcom/lge/mirrorlink/commonapi/ConnectionListener;
.implements Lcom/lge/mirrorlink/commonapi/CertificationListener;
.implements Lcom/lge/mirrorlink/commonapi/EventMappingListener;
.implements Lcom/lge/mirrorlink/commonapi/ContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;,
        Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;
    }
.end annotation


# static fields
.field private static final MESSAGE_AUDIO_BLOCKED:I = 0x48

.field private static final MESSAGE_AUDIO_CONNECTION_CHANGED:I = 0x20

.field private static final MESSAGE_CERT_STATUS_CHANGED:I = 0x33

.field private static final MESSAGE_DEVICE_INFO_CHANGED:I = 0x29

.field private static final MESSAGE_DISPLAY_CONFIGURATION_CHANGED:I = 0xc

.field private static final MESSAGE_DRIVE_MODE_CHANGED:I = 0x15

.field private static final MESSAGE_EVENT_CONFIGURATION_CHANGED:I = 0x3d

.field private static final MESSAGE_EVENT_MAPPING_CHANGED:I = 0x3e

.field private static final MESSAGE_FRAMEBUFFER_BLOCKED:I = 0x47

.field private static final MESSAGE_MIC_STATUS_CHANGED:I = 0x17

.field private static final MESSAGE_MIRRORLINK_SESSION_CHANGED:I = 0x1f

.field private static final MESSAGE_NIGHT_MODE_CHANGED:I = 0x16

.field private static final MESSAGE_PIXEL_FORMAT_CHANGED:I = 0xb

.field private static final MESSAGE_REMOTEDISPLAY_CONNECTION_CHANGED:I = 0x21

.field private static final MESSAGE_SERVER_DISPLAY_CONFIGURATION_CHANGED:I = 0xd

.field private static final TAG:Ljava/lang/String; = "MirrorLink_commonAPI"

.field private static sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;


# instance fields
.field private final commonAPIServiceBinder:Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;

.field private mCertificationCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/ICertificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCertificationListenerHandler:Landroid/os/Handler;

.field private mCertificationMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/CertificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListenerHandler:Landroid/os/Handler;

.field private mConnectionMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private mContextCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IContextListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContextListenerHandler:Landroid/os/Handler;

.field private mContextMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/ContextManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoListenerHandler:Landroid/os/Handler;

.field private mDeviceInfoMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceStatusListenerHandler:Landroid/os/Handler;

.field private mDeviceStatusMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListenerHandler:Landroid/os/Handler;

.field private mDisplayMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/DisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEventMappingCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mirrorlink/android/commonapi/IEventMappingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventMappingListenerHandler:Landroid/os/Handler;

.field private mEventMappingMgr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/mirrorlink/commonapi/EventMappingManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusMgr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/ICertificationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/ICertificationListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerCertificationListener(Lcom/mirrorlink/android/commonapi/ICertificationListener;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IConnectionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerConnectionListener(Lcom/mirrorlink/android/commonapi/IConnectionListener;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerDeviceInfoListener(Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerDeviceStatusListener(Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;Lcom/mirrorlink/android/commonapi/IDisplayListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDisplayListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->registerDisplayListener(Lcom/mirrorlink/android/commonapi/IDisplayListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoMgr:Ljava/util/Map;

    .line 72
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayMgr:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayCallbackList:Landroid/os/RemoteCallbackList;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusMgr:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionMgr:Ljava/util/Map;

    .line 78
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionCallbackList:Landroid/os/RemoteCallbackList;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationMgr:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationCallbackList:Landroid/os/RemoteCallbackList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingMgr:Ljava/util/Map;

    .line 82
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingCallbackList:Landroid/os/RemoteCallbackList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextMgr:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextCallbackList:Landroid/os/RemoteCallbackList;

    .line 123
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->commonAPIServiceBinder:Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;

    .line 416
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoListenerHandler:Landroid/os/Handler;

    .line 468
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayListenerHandler:Landroid/os/Handler;

    .line 535
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    .line 682
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationListenerHandler:Landroid/os/Handler;

    .line 739
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingListenerHandler:Landroid/os/Handler;

    .line 807
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextListenerHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public static freeInstance()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 102
    return-void
.end method

.method public static getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-nez v0, :cond_b

    .line 92
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {v0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 94
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->sCommonAPIManager:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    return-object v0
.end method

.method private registerCertificationListener(Lcom/mirrorlink/android/commonapi/ICertificationListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/ICertificationListener;

    .prologue
    .line 335
    if-eqz p1, :cond_13

    .line 336
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 337
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register CertificationListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_13
    :goto_13
    return-void

    .line 339
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register CertificationListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private registerConnectionListener(Lcom/mirrorlink/android/commonapi/IConnectionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .prologue
    .line 312
    if-eqz p1, :cond_13

    .line 313
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 314
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register ConnectionListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_13
    :goto_13
    return-void

    .line 316
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register ConnectionListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private registerDeviceInfoListener(Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    .prologue
    .line 243
    if-eqz p1, :cond_13

    .line 244
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 245
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register DeviceInfoListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_13
    :goto_13
    return-void

    .line 247
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register DeviceInfoListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private registerDeviceStatusListener(Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .prologue
    .line 289
    if-eqz p1, :cond_13

    .line 290
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 291
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register DeviceStatusListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_13
    :goto_13
    return-void

    .line 293
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register DeviceStatusListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private registerDisplayListener(Lcom/mirrorlink/android/commonapi/IDisplayListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IDisplayListener;

    .prologue
    .line 266
    if-eqz p1, :cond_13

    .line 267
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 268
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register DisplayListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_13
    :goto_13
    return-void

    .line 270
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register DisplayListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public getCommonAPIBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->commonAPIServiceBinder:Lcom/mirrorlink/android/commonapi/ICommonAPIService$Stub;

    return-object v0
.end method

.method public killListeners()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 110
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 111
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 112
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 113
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 114
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 115
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 107
    return-void
.end method

.method public onAudioBlocked(I)V
    .registers 7
    .param p1, "reason"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextListenerHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    return-void
.end method

.method public onAudioConnectionsChanged(IIIILjava/lang/String;)V
    .registers 10
    .param p1, "audio_out"    # I
    .param p2, "audio_in"    # I
    .param p3, "voice_control"    # I
    .param p4, "phone_audio"    # I
    .param p5, "payload_types"    # Ljava/lang/String;

    .prologue
    .line 600
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    .line 601
    .local v0, "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
    iput p1, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->audio_out:I

    .line 602
    iput p2, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->audio_in:I

    .line 603
    iput p3, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->voice_control:I

    .line 604
    iput p4, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->phone_audio:I

    .line 605
    iput-object p5, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    .line 607
    const/16 v3, 0x20

    .line 606
    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return-void
.end method

.method public onCertificationStatusChanged()V
    .registers 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationListenerHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    return-void
.end method

.method public onDeviceInfoChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "manufacturer"    # Ljava/lang/String;
    .param p6, "modelName"    # Ljava/lang/String;
    .param p7, "modelNumber"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "VERSION_MAJOR"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    const-string/jumbo v1, "VERSION_MINOR"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    const-string/jumbo v1, "CLIENT_IDENTIFIER"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v1, "CLIENT_FRIENDLY_NAME"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v1, "CLIENT_MANUFACTURER"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v1, "CLIENT_MODEL_NAME"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v1, "CLIENT_MODEL_NUMBER"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoListenerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoListenerHandler:Landroid/os/Handler;

    .line 413
    const/16 v3, 0x29

    .line 412
    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    return-void
.end method

.method public onDisplayConfigurationChanged(IIIIIIIIIIIF)V
    .registers 18
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "serverWidth"    # I
    .param p4, "serverHeight"    # I
    .param p5, "padRows"    # I
    .param p6, "padCols"    # I
    .param p7, "padWidth"    # I
    .param p8, "padHeight"    # I
    .param p9, "mmWidth"    # I
    .param p10, "mmHeight"    # I
    .param p11, "mmDistance"    # I
    .param p12, "ppmm"    # F

    .prologue
    .line 444
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "APP_PIXEL_WIDTH"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string/jumbo v2, "APP_PIXEL_HEIGHT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string/jumbo v2, "SERVER_PIXEL_WIDTH"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string/jumbo v2, "SERVER_PIXEL_HEIGHT"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string/jumbo v2, "SERVER_PAD_ROWS"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string/jumbo v2, "SERVER_PAD_COLUMNS"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string/jumbo v2, "CLIENT_PIXEL_WIDTH"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string/jumbo v2, "CLIENT_PIXEL_HEIGHT"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string/jumbo v2, "MM_WIDTH"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string/jumbo v2, "MM_HEIGHT"

    invoke-virtual {v1, v2, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string/jumbo v2, "DISTANCE"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string/jumbo v2, "APP_PIXELS_PER_CLIENT_MM"

    move/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 457
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayListenerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayListenerHandler:Landroid/os/Handler;

    .line 458
    const/16 v4, 0xc

    .line 457
    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void
.end method

.method public onDriveModeChange(Z)V
    .registers 6
    .param p1, "driveMode"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    return-void
.end method

.method public onEventConfigurationChanged(SSSSIIIBZBB)V
    .registers 16
    .param p1, "kbdLanguage"    # S
    .param p2, "kbdCountry"    # S
    .param p3, "uiLanguage"    # S
    .param p4, "uiCountry"    # S
    .param p5, "knobkey"    # I
    .param p6, "devicekey"    # I
    .param p7, "multimediakey"    # I
    .param p8, "funckey"    # B
    .param p9, "itukey"    # Z
    .param p10, "touch"    # B
    .param p11, "pressure"    # B

    .prologue
    .line 721
    new-instance v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;-><init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V

    .line 722
    .local v0, "eventConf":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;
    iput-short p1, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->kbdLanguage:S

    .line 723
    iput-short p2, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->kbdCountry:S

    .line 724
    iput-short p3, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->uiLanguage:S

    .line 725
    iput-short p4, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->uiCountry:S

    .line 726
    iput p5, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->knobkey:I

    .line 727
    iput p6, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->devicekey:I

    .line 728
    iput p7, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->multimediakey:I

    .line 729
    iput-byte p8, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->funckey:B

    .line 730
    iput-boolean p9, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->itukey:Z

    .line 731
    iput-byte p10, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->touch:B

    .line 732
    iput-byte p11, v0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->pressure:B

    .line 733
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingListenerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingListenerHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method public onEventMappingChanged(II)V
    .registers 7
    .param p1, "server_event"    # I
    .param p2, "client_event"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingListenerHandler:Landroid/os/Handler;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    return-void
.end method

.method public onFramebufferBlocked(ISSSS)V
    .registers 11
    .param p1, "reason"    # I
    .param p2, "x"    # S
    .param p3, "y"    # S
    .param p4, "w"    # S
    .param p5, "h"    # S

    .prologue
    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    .local v0, "framebufferArea":Landroid/os/Bundle;
    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    const-string/jumbo v1, "Y"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    const-string/jumbo v1, "WIDTH"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 799
    const-string/jumbo v1, "HEIGHT"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextListenerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextListenerHandler:Landroid/os/Handler;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 794
    return-void
.end method

.method public onMicrophoneStatusChanged(Z)V
    .registers 6
    .param p1, "micInput"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    .line 532
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x17

    .line 531
    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method

.method public onMirrorLinkSessionChanged(Z)V
    .registers 6
    .param p1, "mirrorlinkSessionIsEstablished"    # Z

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    .line 596
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x1f

    .line 595
    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 594
    return-void
.end method

.method public onNightModeChanged(Z)V
    .registers 6
    .param p1, "nightMode"    # Z

    .prologue
    .line 526
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusListenerHandler:Landroid/os/Handler;

    .line 527
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x16

    .line 526
    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method public onPixelFormatChanged(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "pixelFormat"    # Landroid/os/Bundle;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayListenerHandler:Landroid/os/Handler;

    .line 465
    const/16 v2, 0xb

    .line 464
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    return-void
.end method

.method public onRemoteDisplayConnectionChanged(I)V
    .registers 6
    .param p1, "remoteDisplayConnection"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionListenerHandler:Landroid/os/Handler;

    .line 612
    const/16 v2, 0x21

    const/4 v3, 0x0

    .line 611
    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    return-void
.end method

.method public registerContextListener(Lcom/mirrorlink/android/commonapi/IContextListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IContextListener;

    .prologue
    .line 379
    if-eqz p1, :cond_13

    .line 380
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 381
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register ContextListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_13
    :goto_13
    return-void

    .line 383
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register ContextListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public registerEventMappingListener(Lcom/mirrorlink/android/commonapi/IEventMappingListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    .prologue
    .line 357
    if-eqz p1, :cond_13

    .line 358
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 359
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[SUCCESS] Register EventMappingListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_13
    :goto_13
    return-void

    .line 361
    :cond_14
    const-string/jumbo v0, "MirrorLink_commonAPI"

    const-string/jumbo v1, "[FAIL] Register EventMappingListeners"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public unregisterCertificationManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/CertificationManager;

    .line 346
    .local v0, "certMngr":Lcom/lge/mirrorlink/commonapi/CertificationManager;
    if-eqz v0, :cond_49

    .line 347
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/CertificationManager;->getListener()Lcom/mirrorlink/android/commonapi/ICertificationListener;

    move-result-object v1

    .line 348
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/ICertificationListener;
    if-eqz v1, :cond_2f

    .line 349
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mCertificationCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 350
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister CertificationListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove CertificationManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/ICertificationListener;
    :cond_49
    return-void
.end method

.method public unregisterConnectionManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    .line 323
    .local v0, "connMngr":Lcom/lge/mirrorlink/commonapi/ConnectionManager;
    if-eqz v0, :cond_49

    .line 324
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->getListener()Lcom/mirrorlink/android/commonapi/IConnectionListener;

    move-result-object v1

    .line 325
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IConnectionListener;
    if-eqz v1, :cond_2f

    .line 326
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mConnectionCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 327
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister ConnectionListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove ConnectionManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IConnectionListener;
    :cond_49
    return-void
.end method

.method public unregisterContextManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/ContextManager;

    .line 390
    .local v0, "ctxMngr":Lcom/lge/mirrorlink/commonapi/ContextManager;
    if-eqz v0, :cond_49

    .line 391
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/ContextManager;->getListener()Lcom/mirrorlink/android/commonapi/IContextListener;

    move-result-object v1

    .line 392
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IContextListener;
    if-eqz v1, :cond_2f

    .line 393
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mContextCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 394
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister ContextListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove ContextManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IContextListener;
    :cond_49
    return-void
.end method

.method public unregisterDeviceInfoManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    .line 254
    .local v0, "devInfoMngr":Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
    if-eqz v0, :cond_49

    .line 255
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->getListener()Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    move-result-object v1

    .line 256
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    if-eqz v1, :cond_2f

    .line 257
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceInfoCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 258
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister DeviceInfoListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove DeviceInfoManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    :cond_49
    return-void
.end method

.method public unregisterDeviceStatusManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    .line 300
    .local v0, "devStatusMngr":Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
    if-eqz v0, :cond_49

    .line 301
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->getListener()Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    move-result-object v1

    .line 302
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    if-eqz v1, :cond_2f

    .line 303
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDeviceStatusCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 304
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister DeviceStatusListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove DeviceStatusManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    :cond_49
    return-void
.end method

.method public unregisterDisplayManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/DisplayManager;

    .line 277
    .local v0, "dispMngr":Lcom/lge/mirrorlink/commonapi/DisplayManager;
    if-eqz v0, :cond_49

    .line 278
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/DisplayManager;->getListener()Lcom/mirrorlink/android/commonapi/IDisplayListener;

    move-result-object v1

    .line 279
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IDisplayListener;
    if-eqz v1, :cond_2f

    .line 280
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mDisplayCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 281
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister DisplayListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove DisplayManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IDisplayListener;
    :cond_49
    return-void
.end method

.method public unregisterEventMappingManager(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingMgr:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    .line 368
    .local v0, "evtMapMngr":Lcom/lge/mirrorlink/commonapi/EventMappingManager;
    if-eqz v0, :cond_49

    .line 369
    invoke-virtual {v0}, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->getListener()Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    move-result-object v1

    .line 370
    .local v1, "listener":Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    if-eqz v1, :cond_2f

    .line 371
    iget-object v2, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->mEventMappingCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 372
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] unregister EventMappingListener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_2f
    const-string/jumbo v2, "MirrorLink_commonAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUCCESS] remove EventMappingManager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v1    # "listener":Lcom/mirrorlink/android/commonapi/IEventMappingListener;
    :cond_49
    return-void
.end method
