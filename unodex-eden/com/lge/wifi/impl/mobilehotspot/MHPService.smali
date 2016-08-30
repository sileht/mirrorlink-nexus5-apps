.class public Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.super Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;,
        Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;
    }
.end annotation


# static fields
.field public static final ALLOWED_ALL_DEVCIE:Ljava/lang/String; = "mhp_allowed_all_device"

.field public static final SETTINGS_MHP_COUNTRY:Ljava/lang/String; = "mhp_country"

.field public static final VZW_MOBILEHOTSPOT_ON:Ljava/lang/String; = "wifi_vzw_mobile_hotspot_on"


# instance fields
.field private final MHP_LOG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private allowedlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dnsServers:[Ljava/lang/String;

.field private isAirplaneModeOn:Z

.field private isChangedConfigure:Z

.field private isECM:Z

.field private isRecoverAfterECM:Z

.field private mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

.field private mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

.field private mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

.field private mContext:Landroid/content/Context;

.field private mDeniedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceProperies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDhcpDisableThread:Ljava/lang/Thread;

.field private mDhcpEnableThread:Ljava/lang/Thread;

.field private mDhcpRestartThread:Ljava/lang/Thread;

.field private mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

.field private mIFace:Ljava/lang/String;

.field private mIsLoging:Z

.field private mIsMobileHotspotOn:Z

.field private mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

.field private mMhpDisableThread:Ljava/lang/Thread;

.field private mMhpEnableThread:Ljava/lang/Thread;

.field private mMobileHotspotState:I

.field private mOffByAirplaneMode:Z

.field private mOnOffWlP2pService:Z

.field private mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private phone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;-><init>()V

    .line 50
    const-string v1, "MobileHotspotService"

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->TAG:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 53
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 54
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 55
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    .line 56
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 61
    const-string v1, "persist.service.mhp.log"

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->MHP_LOG:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 66
    const/16 v1, 0xa

    iput v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    .line 77
    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    .line 118
    new-instance v1, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;

    invoke-direct {v1, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.mobilehotspot.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_NATIVE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "com.lge.mobilehotspot.action.AP_POWER_ONOFF_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_EMC_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const-string v1, "persist.service.mhp.log"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService;I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return-void
.end method

.method static synthetic access$10(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOffByAirplaneMode:Z

    return-void
.end method

.method static synthetic access$11(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOffByAirplaneMode:Z

    return v0
.end method

.method static synthetic access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    return-void
.end method

.method static synthetic access$16(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    return v0
.end method

.method static synthetic access$17(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    return-void
.end method

.method static synthetic access$18(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .registers 1

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncAllConectedDevices()V

    return-void
.end method

.method static synthetic access$19(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z

    return v0
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsLoging:Z

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsLoging:Z

    return v0
.end method

.method static synthetic access$7(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirPlaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    .registers 2

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirplaneModeOn:Z

    return-void
.end method

.method static synthetic access$9(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return v0
.end method

.method private addConnectedNotification()V
    .registers 4

    .prologue
    .line 1462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT_CONNECTION_COUNT_NOTIFICATION"

    .line 1464
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v2

    .line 1463
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1465
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1466
    return-void
.end method

.method private addNetworkDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "properties"    # [Ljava/lang/String;

    .prologue
    .line 593
    return-void
.end method

.method private addOnOffNotification()V
    .registers 4

    .prologue
    .line 1470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_ONOFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT"

    iget-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1472
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1473
    return-void
.end method

.method private getConnectedDeviceKeyList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v0, "connectedDeviceKeylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getAllowedAllDevcie()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 1068
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    sget v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    invoke-virtual {v3, v5, v5, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1073
    :goto_14
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncAllConectedDevices()V

    .line 1075
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getList()Ljava/util/HashMap;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_34

    .line 1085
    return-object v0

    .line 1070
    :cond_2c
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    sget v4, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    invoke-virtual {v3, v5, v5, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_14

    .line 1075
    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1077
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1079
    .local v1, "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_48

    .line 1081
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48
.end method

.method private getNetworkDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 569
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_11

    .line 571
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    :goto_10
    return-object v1

    .line 573
    :cond_11
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->updateNetworkDeviceProperty(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private getNetworkIface()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1716
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Available network interface : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;

    return-object v0
.end method

.method private final isAirPlaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 470
    const-string v3, "airplane_mode_on"

    .line 469
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isNetworkDeviceCached(Ljava/lang/String;)Z
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setNetworkIFace()V
    .registers 2

    .prologue
    .line 415
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->start()V

    .line 416
    return-void
.end method

.method private syncAllConectedDevices()V
    .registers 8

    .prologue
    .line 949
    const-string v3, "MobileHotspotService"

    const-string v4, "syncAllConectedDevices "

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 951
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocMac()[Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "items_mac":[Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocDevicename()[Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "items_dname":[Ljava/lang/String;
    if-nez v2, :cond_1b

    .line 969
    :cond_1a
    return-void

    .line 957
    :cond_1b
    if-eqz v1, :cond_1a

    .line 960
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MHS_NEZZIMOM] Assoc list[mac] : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MHS_NEZZIMOM] Assoc list[dname] : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v3

    if-ge v0, v3, :cond_1a

    .line 965
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    .line 966
    const/4 v6, 0x3

    .line 965
    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e
.end method

.method private syncMacFilter([Ljava/lang/String;I)Z
    .registers 13
    .param p1, "macList"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 973
    array-length v1, p1

    .line 975
    .local v1, "filterCnt":I
    const/4 v5, 0x0

    .line 978
    .local v5, "ret":Z
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterCount(I)Z

    move-result v5

    .line 979
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] setMacFilterCount Result : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_6a

    .line 984
    :goto_1a
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] Mac Filtered Device Count : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    if-eqz v5, :cond_33

    .line 989
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-lt v2, v1, :cond_6f

    .line 1001
    .end local v2    # "i":I
    :cond_33
    if-eqz v5, :cond_4d

    .line 1004
    :try_start_35
    invoke-virtual {p0, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterMode(I)Z

    move-result v5

    .line 1005
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] setMacFilterMode Result : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4d} :catch_a7

    .line 1011
    :cond_4d
    :goto_4d
    const/4 v6, 0x0

    .line 1013
    .local v6, "temp":I
    :try_start_4e
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getMacFilterCount()I

    move-result v6

    .line 1014
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] MAC count : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_66} :catch_ac

    .line 1019
    :goto_66
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_67
    if-lt v3, v6, :cond_b1

    .line 1030
    return v5

    .line 980
    .end local v3    # "j":I
    .end local v6    # "temp":I
    :catch_6a
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 992
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    :cond_6f
    :try_start_6f
    aget-object v7, p1, v2

    invoke-virtual {p0, v2, v7}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v5

    .line 993
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] setMacFilterByIndex Result : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 994
    const-string v9, " : Index ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mac addr ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 993
    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_9f} :catch_a2

    .line 989
    :goto_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 995
    :catch_a2
    move-exception v0

    .line 996
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9f

    .line 1006
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catch_a7
    move-exception v0

    .line 1007
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d

    .line 1015
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v6    # "temp":I
    :catch_ac
    move-exception v0

    .line 1016
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_66

    .line 1022
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "j":I
    :cond_b1
    :try_start_b1
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "macAddr":Ljava/lang/String;
    const-string v7, "MobileHotspotService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[MHS_NEZZIMOM] MAC List : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_c9} :catch_cc

    .line 1019
    .end local v4    # "macAddr":Ljava/lang/String;
    :goto_c9
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 1024
    :catch_cc
    move-exception v0

    .line 1025
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c9
.end method

.method private updateNetworkDeviceProperty(Ljava/lang/String;)V
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "properties":[Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 586
    invoke-direct {p0, p1, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addNetworkDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 588
    :cond_9
    return-void
.end method


# virtual methods
.method public addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1146
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Add Mac Filter Info >> Mac Addr : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1147
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - exist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_OFF:I

    if-ne p3, v0, :cond_66

    .line 1151
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Add New MAC filter : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Off, Add New Mac : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1183
    :goto_65
    return v0

    .line 1157
    :cond_66
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    if-ne p3, v0, :cond_99

    .line 1159
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    .line 1160
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Deny, Filter List : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1161
    goto :goto_65

    .line 1164
    :cond_99
    if-nez p1, :cond_bc

    .line 1167
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    .line 1168
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Allow, Filter List is existed list : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1170
    goto :goto_65

    .line 1173
    :cond_bc
    if-eqz p1, :cond_101

    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_101

    .line 1176
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Add New MAC filter : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1178
    const-string v0, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Filter Mode : Allow, Add New Mac : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncMacFilter([Ljava/lang/String;I)Z

    move v0, v1

    .line 1181
    goto/16 :goto_65

    .line 1183
    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_65
.end method

.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pAddMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public addMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pAddMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearNATRule()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pNatRuleClear()V

    .line 622
    return-void
.end method

.method public clearPortFilterRule()V
    .registers 2

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->clearPortFilterRule()V

    .line 1631
    return-void
.end method

.method public clearPortForwardingrRule()V
    .registers 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->clearPortForwardRule()V

    .line 1656
    return-void
.end method

.method public connectFromRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1450
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 1452
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Add connected device >> item : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addConnectedNotification()V

    .line 1457
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public createSoftAPService()I
    .registers 2

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->createSoftAP()I

    move-result v0

    return v0
.end method

.method public deAuthMac(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDeAuthMac(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public destroySoftAPService()I
    .registers 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->destroySoftAP()I

    move-result v0

    return v0
.end method

.method public dhcpDisable(Z)Z
    .registers 3
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpDisableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpEnableThread:Ljava/lang/Thread;

    .line 891
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpEnableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public dhcpEnable(Z)Z
    .registers 3
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpEnableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpDisableThread:Ljava/lang/Thread;

    .line 898
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpDisableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public dhcpRestart()Z
    .registers 2

    .prologue
    .line 823
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpRestartThread:Ljava/lang/Thread;

    .line 824
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDhcpRestartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public disable(Z)Z
    .registers 5
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 881
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotDisableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpDisableThread:Ljava/lang/Thread;

    .line 882
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpDisableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 883
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_vzw_mobile_hotspot_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 885
    return v2
.end method

.method public disableNatMasquerade()Z
    .registers 3

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1673
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const/4 v0, 0x0

    .line 1677
    :goto_e
    return v0

    .line 1676
    :cond_f
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDisableNatMasquerade(Ljava/lang/String;)V

    .line 1677
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public disconnectDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1225
    if-eqz p1, :cond_e

    .line 1230
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->removeAtList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$6(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1233
    const/4 v0, 0x1

    .line 1236
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public enable(Z)Z
    .registers 5
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 747
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirplaneModeOn:Z

    if-eqz v1, :cond_e

    .line 748
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Airplane mode is on, so return enabling"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x0

    .line 777
    :goto_d
    return v0

    .line 761
    :cond_e
    const-string v1, "MobileHotspotService"

    const-string v2, "[MHS_NEZZIMOM] Mobile Hotspot enable"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->openSoftAP()I

    .line 765
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 767
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    if-nez v1, :cond_27

    .line 769
    iput-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    .line 772
    :cond_27
    new-instance v1, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;

    invoke-direct {v1, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotEnableThread;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpEnableThread:Ljava/lang/Thread;

    .line 773
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMhpEnableThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 775
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_vzw_mobile_hotspot_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1611
    invoke-super {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->finalize()V

    .line 1613
    return-void
.end method

.method public get802Mode()I
    .registers 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllow11B()I

    move-result v0

    return v0
.end method

.method public getAllAssocDevicename()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocDevicename()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllAssocMac()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAllAssocMac()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedAllDevcie()I
    .registers 4

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_allowed_all_device"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssocListCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAssocListCount()I

    move-result v0

    return v0
.end method

.method public getAuthentication()I
    .registers 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetAuthentication()I

    move-result v0

    return v0
.end method

.method public getBroadcastChannel()I
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSocialChannel()I

    move-result v0

    return v0
.end method

.method public getBroadcastSSID()I
    .registers 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetHideSSID()I

    move-result v0

    return v0
.end method

.method public getDNS1Sample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetDNS1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDNS2Sample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetDNS2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUsageTime()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCountryCode()I
    .registers 4

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDhcpDNS1()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPDNS1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpDNS2()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPDNS2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpEndIp()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPEndAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpGateway()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPGateway()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpMask()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPMask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpStartIp()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetDHCPStartAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryption()I
    .registers 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetEncryption()I

    move-result v0

    return v0
.end method

.method public getEndIPSample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetEndIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetFrequency()I

    move-result v0

    return v0
.end method

.method public getGatewaySample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetGateway()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacFilterCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterCount()I

    move-result v0

    return v0
.end method

.method public getMacFilterMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMacFilterMode()I

    move-result v0

    return v0
.end method

.method public getMaxClients()I
    .registers 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetMaxClients()I

    move-result v0

    return v0
.end method

.method public getMobileHotspotState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 940
    iget v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortFilteringList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortforwardingList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1625
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSIDService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftapIsolation()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetSoftapIsolation()Z

    move-result v0

    return v0
.end method

.method public getStartIPSample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetStartIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticIp()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetStaticIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticSubnet()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetStaticSubnet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubnetMaskSample()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdGetSubnetMask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey1()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey2()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey3()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKey4()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPKey4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWEPKeyIndex()I
    .registers 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWEPIndex()I

    move-result v0

    return v0
.end method

.method public getWPAKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetWPAKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()Z
    .registers 4

    .prologue
    .line 597
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Mobile Hotspot Service Init!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 602
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeviceProperies:Ljava/util/HashMap;

    .line 605
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 607
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->getInstance(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 608
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public initHSLService()I
    .registers 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->openSoftAP()I

    move-result v0

    return v0
.end method

.method public initIpTable()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/iptables;->initIptables()V

    .line 1618
    return-void
.end method

.method public insertDeniedList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Current denied list(inserted) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/4 v0, 0x1

    return v0
.end method

.method public isDhcpEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 935
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NEZZIMOM] isEnabled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    return v0
.end method

.method public isMhsDataAvailable()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 673
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v5, :cond_13

    .line 681
    :cond_12
    :goto_12
    return v3

    .line 676
    :cond_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 677
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v1

    .line 678
    .local v1, "state":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 679
    .local v0, "isRoaming":Z
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[antonoi]phone.getDataState"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[antonoi]phone.isNetworkRoaming"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v4, :cond_12

    if-nez v0, :cond_12

    move v3, v4

    goto :goto_12
.end method

.method public isUsed()Z
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOnOffWlP2pService:Z

    return v0
.end method

.method public listAllowedDevices()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    .line 1036
    const-string v2, "MobileHotspotService"

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MHS_NEZZIMOM] listAllowedDevices.getSize(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getSize()I
    invoke-static {v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1036
    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 1040
    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getList()Ljava/util/HashMap;
    invoke-static {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1039
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_60

    .line 1053
    const-string v2, "MobileHotspotService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MHS_NEZZIMOM] Allowed list : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1040
    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1042
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_74
    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1044
    .local v0, "device":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_74

    .line 1046
    const-string v5, "MobileHotspotService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] listAllowedDevices: "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-static {v5, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v5, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->allowedlist:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74
.end method

.method public listConnectedDevices()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v0, "connectedDeviceMaclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getConnectedDeviceKeyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1095
    .local v1, "connectedDevicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1095
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    .line 1096
    .local v2, "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public listConnectedDevicesname()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v0, "connectedDeviceNamelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getConnectedDeviceKeyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1108
    .local v1, "connectedDevicelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1108
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    .line 1109
    .local v2, "device":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public loadDriverService()I
    .registers 3

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getDefaultCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->loadP2PDriver(I)I

    move-result v0

    return v0
.end method

.method public mhsCdmaDataConnect()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 718
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_12

    .line 719
    const/4 v3, 0x0

    .line 741
    :goto_11
    return v3

    .line 721
    :cond_12
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v2

    .line 722
    .local v2, "state":I
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonoi]phone.getDataState"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x1

    .line 726
    .local v0, "result":Z
    const/4 v1, 0x3

    .line 727
    .local v1, "retry_count":I
    :goto_2e
    if-gtz v1, :cond_32

    .line 741
    :goto_30
    const/4 v3, 0x1

    goto :goto_11

    .line 728
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v0

    .line 729
    if-eqz v0, :cond_4b

    .line 730
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_30

    .line 739
    :catch_42
    move-exception v3

    const-string v3, "MobileHotspotService"

    const-string v4, "Exception - Data Call Not Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 734
    :cond_4b
    :try_start_4b
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Not Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_42

    .line 735
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e
.end method

.method public mhsCdmaDataDisconnect()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 688
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_12

    .line 689
    const/4 v3, 0x0

    .line 711
    :goto_11
    return v3

    .line 691
    :cond_12
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v2

    .line 692
    .local v2, "state":I
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonoi]phone.getDataState"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x1

    .line 695
    .local v0, "result":Z
    const/4 v1, 0x3

    .line 696
    .local v1, "retry_count":I
    :goto_2e
    if-gtz v1, :cond_32

    .line 711
    :goto_30
    const/4 v3, 0x1

    goto :goto_11

    .line 697
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v0

    .line 698
    if-eqz v0, :cond_4b

    .line 699
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_42

    goto :goto_30

    .line 708
    :catch_42
    move-exception v3

    const-string v3, "MobileHotspotService"

    const-string v4, "Exception - Data Call Not Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 703
    :cond_4b
    :try_start_4b
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Not Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_42

    .line 704
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e
.end method

.method public mhsCdmaDataRestart()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 627
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_12

    .line 628
    const/4 v3, 0x0

    .line 667
    :goto_11
    return v3

    .line 630
    :cond_12
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v2

    .line 631
    .local v2, "state":I
    const-string v3, "MobileHotspotService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonoi]phone.getDataState"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x1

    .line 634
    .local v0, "result":Z
    const/4 v1, 0x3

    .line 635
    .local v1, "retry_count":I
    :goto_2e
    if-gtz v1, :cond_36

    .line 651
    :goto_30
    const/4 v0, 0x1

    .line 652
    const/4 v1, 0x3

    .line 653
    :goto_32
    if-gtz v1, :cond_59

    .line 667
    :goto_34
    const/4 v3, 0x1

    goto :goto_11

    .line 636
    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v0

    .line 637
    if-eqz v0, :cond_4f

    .line 638
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_45} :catch_46

    goto :goto_30

    .line 647
    :catch_46
    move-exception v3

    const-string v3, "MobileHotspotService"

    const-string v4, "Exception - Data Call Not Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 642
    :cond_4f
    :try_start_4f
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Not Disabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_56} :catch_46

    .line 643
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 654
    :cond_59
    :try_start_59
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->phone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v0

    .line 655
    if-eqz v0, :cond_72

    .line 656
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_68} :catch_69

    goto :goto_34

    .line 665
    :catch_69
    move-exception v3

    const-string v3, "MobileHotspotService"

    const-string v4, "Exception - Data Call Not Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 660
    :cond_72
    :try_start_72
    const-string v3, "MobileHotspotService"

    const-string v4, "[antonoi]Data Call Not Enabled"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_79} :catch_69

    .line 661
    add-int/lit8 v1, v1, -0x1

    goto :goto_32
.end method

.method public removeAllAllowedDevices()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 1116
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllConnectedDevices()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mConnectedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V

    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllowedDevice(Ljava/lang/String;)Z
    .registers 5
    .param p1, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1210
    if-eqz p1, :cond_22

    .line 1212
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Remove allowed device >> item : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->removeAtList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$6(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1218
    const/4 v0, 0x1

    .line 1220
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public removeAlltheList()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2premoveAlltheList()I

    .line 1139
    const/4 v0, 0x1

    return v0
.end method

.method public removeDeniedList(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1132
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Current denied list(removed) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveDeniedList(Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x1

    return v0
.end method

.method public set802Mode(I)Z
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1242
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DPKIM] set802Mode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetAllow11B(I)I

    .line 1244
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowAll(Z)Z
    .registers 3
    .param p1, "persistSetting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public setAuthentication(I)Z
    .registers 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetAuthentication(I)I

    .line 1350
    const/4 v0, 0x1

    return v0
.end method

.method public setBatteryUsageTime(I)Z
    .registers 3
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mBatteryUsageEnabler:Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBatteryUsageEnabler;->setUsageTime(I)V

    .line 1255
    const/4 v0, 0x1

    return v0
.end method

.method public setBroadcastChannel(I)Z
    .registers 3
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSocialChannel(I)I

    .line 1261
    const/4 v0, 0x1

    return v0
.end method

.method public setBroadcastSSID(I)I
    .registers 3
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetHideSSID(I)I

    move-result v0

    return v0
.end method

.method public setCountryCode(I)I
    .registers 3
    .param p1, "countrycode"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setCountryCode(I)I

    move-result v0

    return v0
.end method

.method public setDNS1Sample(Ljava/lang/String;)I
    .registers 3
    .param p1, "dns1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetDNS1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDNS2Sample(Ljava/lang/String;)I
    .registers 3
    .param p1, "dns2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetDNS2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDefaultCountryCode(I)V
    .registers 4
    .param p1, "wlan_country"    # I

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhp_country"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1817
    return-void
.end method

.method public setDhcpDNS1(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dns1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1506
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPDNS1(Ljava/lang/String;)I

    move-result v0

    .line 1507
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setDhcpDNS2(Ljava/lang/String;)Z
    .registers 5
    .param p1, "dns2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1513
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPDNS2(Ljava/lang/String;)I

    move-result v0

    .line 1514
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setDhcpEndIp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ipaddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1485
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPEndAddress(Ljava/lang/String;)I

    move-result v0

    .line 1486
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setDhcpGateway(Ljava/lang/String;)Z
    .registers 5
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1492
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPGateway(Ljava/lang/String;)I

    move-result v0

    .line 1493
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setDhcpMask(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1499
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPMask(Ljava/lang/String;)I

    move-result v0

    .line 1500
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setDhcpStartIp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ipaddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1478
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetDHCPStartAddress(Ljava/lang/String;)I

    move-result v0

    .line 1479
    .local v0, "ret":I
    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setEmergencyCall(Z)V
    .registers 6
    .param p1, "_isECM"    # Z

    .prologue
    const/4 v3, 0x1

    .line 475
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    .line 477
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isECM:Z

    if-eqz v1, :cond_18

    .line 479
    const-string v1, "MobileHotspotService"

    const-string v2, "[MHS_NEZZIMOM] Exit Emergency call mode)"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z

    if-eqz v1, :cond_1e

    .line 483
    iput-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    .line 486
    const/4 v1, 0x1

    :try_start_15
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->disable(Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 494
    :cond_18
    :goto_18
    return-void

    .line 487
    :catch_19
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z

    goto :goto_18
.end method

.method public setEncryption(I)Z
    .registers 3
    .param p1, "command"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetEncryption(I)I

    .line 1356
    const/4 v0, 0x1

    return v0
.end method

.method public setEndIPSample(Ljava/lang/String;)I
    .registers 3
    .param p1, "endip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetEndIP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForward()Z
    .registers 3

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1684
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const/4 v0, 0x0

    .line 1688
    :goto_e
    return v0

    .line 1687
    :cond_f
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setNatForward(Ljava/lang/String;)V

    .line 1688
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public setFrequency(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetFrequency(I)V

    .line 1828
    return-void
.end method

.method public setGatewaySample(Ljava/lang/String;)I
    .registers 3
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetGateway(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIsolationEnabled(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setIsolationEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setMacFilterByIndex(ILjava/lang/String;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterByIndex(ILjava/lang/String;)I

    .line 1413
    const/4 v0, 0x1

    return v0
.end method

.method public setMacFilterCount(I)Z
    .registers 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterCount(I)I

    .line 1419
    const/4 v0, 0x1

    return v0
.end method

.method public setMacFilterMode(I)Z
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMacFilterMode(I)I

    .line 1435
    const/4 v0, 0x1

    return v0
.end method

.method public setMacaddracl(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacaddracl(I)Z

    .line 1373
    const/4 v0, 0x1

    return v0
.end method

.method public setMasquerade()Z
    .registers 3

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1662
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const/4 v0, 0x0

    .line 1666
    :goto_e
    return v0

    .line 1665
    :cond_f
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pNatMasqurade(Ljava/lang/String;)V

    .line 1666
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public setMaxAssoc(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMaxAssoc(I)I

    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method public setMaxClients(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetMaxClients(I)Z

    .line 1379
    const/4 v0, 0x1

    return v0
.end method

.method public setMobileHotspotState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    iput p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMobileHotspotState:I

    .line 945
    return-void
.end method

.method public setMssChange()Z
    .registers 3

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1694
    const-string v0, "MobileHotspotService"

    const-string v1, "[MHS_NEZZIMOM] Can\'t get network iface!!"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const/4 v0, 0x0

    .line 1698
    :goto_e
    return v0

    .line 1697
    :cond_f
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setMssSize(Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSSID(Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method public setNetInterface(Ljava/lang/String;)V
    .registers 3
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetNetInterface(Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method public setPortFiltering(IIII)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "portType"    # I
    .param p4, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1636
    const/4 v0, 0x0

    .line 1637
    .local v0, "protocol":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1638
    .local v1, "rule":Ljava/lang/String;
    if-ne v5, p3, :cond_4c

    .line 1639
    const-string v0, "udp"

    .line 1645
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1646
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2, v1, p4}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setPortFilterRule(Ljava/lang/String;I)V

    .line 1647
    const-string v2, "MobileHotspotService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[antonio] Port Filter Rule : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    return v5

    .line 1642
    :cond_4c
    const-string v0, "tcp"

    goto :goto_7
.end method

.method public setPortforwarding(ILjava/lang/String;I)Z
    .registers 9
    .param p1, "port"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "addORdel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1705
    .local v0, "intport":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1707
    .local v1, "strport":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->getNetworkIface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->setPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1709
    const-string v2, "MobileHotspotService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[antonio] Port Filter Rule >>  %d %s "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v2, 0x1

    return v2
.end method

.method public setSSIDService(Ljava/lang/String;)I
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSSID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSoftapIsolation(Z)Z
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public setStartIPSample(Ljava/lang/String;)I
    .registers 3
    .param p1, "startip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetStartIP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStaticIp(Ljava/lang/String;)V
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetStaticIP(Ljava/lang/String;)V

    .line 1560
    return-void
.end method

.method public setStaticSubnet(Ljava/lang/String;)V
    .registers 3
    .param p1, "netmask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetStaticSubnet(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public setSubnetMaskSample(Ljava/lang/String;)I
    .registers 3
    .param p1, "mask"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pDhcpdSetSubnetMask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTxPower(I)I
    .registers 3
    .param p1, "txPower"    # I

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetTxPower(I)I

    move-result v0

    return v0
.end method

.method public setWEPKey1(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey1(Ljava/lang/String;)I

    .line 1325
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey2(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey2(Ljava/lang/String;)I

    .line 1331
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey3(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey3(Ljava/lang/String;)I

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKey4(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPKey4(Ljava/lang/String;)I

    .line 1343
    const/4 v0, 0x1

    return v0
.end method

.method public setWEPKeyIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWEPIndex(I)I

    .line 1300
    const/4 v0, 0x1

    return v0
.end method

.method public setWPAKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetWPAKey(Ljava/lang/String;)I

    .line 1284
    const/4 v0, 0x1

    return v0
.end method

.method public unloadDriverService()I
    .registers 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->unloadP2PDriver()I

    move-result v0

    return v0
.end method

.method public updateAllowedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "oldMacAddr"    # Ljava/lang/String;
    .param p2, "newMacAddr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1191
    const-string v1, "MobileHotspotService"

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Check exist device : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1193
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    if-eqz p1, :cond_52

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 1196
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Update >> from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mAllowedDeviceListManager:Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;

    .line 1198
    const/4 v2, 0x2

    .line 1197
    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, p2, p3, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->access$5(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    .line 1201
    invoke-virtual {p0, p2, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->addMacFilterAllowList(Ljava/lang/String;I)Z

    .line 1203
    const/4 v0, 0x1

    .line 1205
    :cond_52
    return v0
.end method
