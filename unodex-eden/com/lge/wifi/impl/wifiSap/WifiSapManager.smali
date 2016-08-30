.class public Lcom/lge/wifi/impl/wifiSap/WifiSapManager;
.super Ljava/lang/Object;
.source "WifiSapManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiSapService"

.field public static final WIFI_SAP_DHCP_INFO_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

.field public static final WIFI_SAP_DISABLED_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.DISABLED"

.field public static final WIFI_SAP_ENABLED_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.ENABLED"

.field public static final WIFI_SAP_HOSTAPD_CONNECTED_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

.field public static final WIFI_SAP_HUNG_EVENT:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_DRIVER_HUNG_EVENT"

.field public static final WIFI_SAP_MAX_REACHED_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

.field public static final WIFI_SAP_STATION_ASSOC_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

.field public static final WIFI_SAP_STATION_DISASSOC_ACTION:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

.field public static final WIFI_SAP_WPS_EVENT_DISABLE:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_DISABLE"

.field public static final WIFI_SAP_WPS_EVENT_FAIL:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_FAIL"

.field public static final WIFI_SAP_WPS_EVENT_REG_SUCCES:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_REG_SUCCES"

.field public static final WIFI_SAP_WPS_EVENT_SUCCESS:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_SUCCESS"

.field public static final WIFI_SAP_WPS_EVENT_TIMEOUT:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_TIMEOUT"

.field public static final WIFI_SAP_WPS_PBC_ACTIVE:Ljava/lang/String; = "com.lge.wifi.sap.WIFI_SAP_WPS_PBC_ACTIVE"

.field private static mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

.field private static mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    .line 52
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;)V
    .registers 2
    .param p1, "service"    # Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sput-object p1, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    .line 91
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;
    .registers 3

    .prologue
    .line 61
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-nez v2, :cond_15

    .line 63
    const-string v2, "wifiSapService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    .line 65
    .local v1, "service":Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;
    new-instance v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-direct {v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;-><init>(Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;)V

    sput-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    .line 68
    :cond_15
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    return-object v2
.end method

.method private static getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;
    .registers 3

    .prologue
    .line 73
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    if-nez v2, :cond_10

    .line 75
    const-string v2, "wifiSapService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    .line 77
    .local v1, "service":Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;
    sput-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    .line 79
    :cond_10
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->mService:Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    return-object v2
.end method


# virtual methods
.method public MacFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 456
    :goto_7
    return v0

    .line 454
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->MacFilterremoveAllowedList(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 456
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public MacFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 470
    :goto_7
    return v0

    .line 468
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->MacFilterremoveDeniedList(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 470
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->addMacFilterAllowList(Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 97
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public addMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->addMacFilterDenyList(Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 105
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public enableSoftAp(Z)Z
    .registers 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->enableSoftAp(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 113
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public enableSoftApWifiCfg(ZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "bEnable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "wlanIface"    # Ljava/lang/String;
    .param p4, "softapIface"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->enableSoftApWifiCfg(ZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 122
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAllAssocMacList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAllAssocMacList()[Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 130
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAllAssocMacListATT()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 151
    :goto_7
    return-object v0

    .line 149
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAllAssocMacListATT()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 151
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getAllAssocMacListVZW()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 164
    :goto_7
    return-object v0

    .line 162
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAllAssocMacListVZW()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 164
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getAssoStaMacListCount()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 183
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 190
    :goto_7
    return v0

    .line 188
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAssoStaMacListCount()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 190
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 177
    :goto_7
    return-object v0

    .line 175
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 177
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getAutoShutOffTime()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 196
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 203
    :goto_7
    return v0

    .line 201
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getAutoShutOffTime()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 203
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getChannel()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 209
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 216
    :goto_7
    return v0

    .line 214
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getChannel()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 216
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 229
    :goto_7
    return-object v0

    .line 227
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getCountryCode()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 229
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getHiddenSsid()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 242
    :goto_7
    return v0

    .line 240
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getHiddenSsid()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 242
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 255
    :goto_7
    return-object v0

    .line 253
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getMacFilterByIndex(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 255
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getMacFilterCount()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 261
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 268
    :goto_7
    return v0

    .line 266
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getMacFilterCount()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 268
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 281
    :goto_7
    return-object v0

    .line 279
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 281
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getMaxNumOfClients()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 287
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 294
    :goto_7
    return v0

    .line 292
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getMaxNumOfClients()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 294
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 307
    :goto_7
    return-object v0

    .line 305
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 307
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getPrivacySeparator()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 320
    :goto_7
    return v0

    .line 318
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getPrivacySeparator()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 320
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 333
    :goto_7
    return-object v0

    .line 331
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 333
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getSoftApStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 346
    :goto_7
    return v0

    .line 344
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getSoftApStatus()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 346
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getSsid()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 359
    :goto_7
    return-object v0

    .line 357
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getSsid()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 359
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWepKey1()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 372
    :goto_7
    return-object v0

    .line 370
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWepKey1()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 372
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWepKey2()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 385
    :goto_7
    return-object v0

    .line 383
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWepKey2()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 385
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWepKey3()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 398
    :goto_7
    return-object v0

    .line 396
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWepKey3()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 398
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWepKey4()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 411
    :goto_7
    return-object v0

    .line 409
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWepKey4()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 411
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWepKeyIndex()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 422
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 429
    :goto_7
    return v0

    .line 427
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWepKeyIndex()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 429
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWpaKey()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 442
    :goto_7
    return-object v0

    .line 440
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWpaKey()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 442
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    .registers 5
    .param p1, "isEnabled"    # I
    .param p2, "isNDEF"    # I

    .prologue
    const/4 v0, 0x0

    .line 851
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 858
    :goto_7
    return-object v0

    .line 856
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 858
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getWpsNfcHandoverSelect(I)Ljava/lang/String;
    .registers 4
    .param p1, "isNDEF"    # I

    .prologue
    const/4 v0, 0x0

    .line 863
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 870
    :goto_7
    return-object v0

    .line 868
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->getWpsNfcHandoverSelect(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 870
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public removeAlltheList()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 484
    :goto_7
    return v0

    .line 482
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->removeAlltheList()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 484
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public removeMacFilterAllowList()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 493
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 500
    :goto_7
    return v0

    .line 498
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->removeMacFilterAllowList()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 500
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setAutoShutOffTime(I)Z
    .registers 4
    .param p1, "time"    # I

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 514
    :goto_7
    return v0

    .line 512
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setAutoShutOffTime(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 514
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setChannel(I)Z
    .registers 4
    .param p1, "channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 524
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 531
    :goto_7
    return v0

    .line 529
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setChannel(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 531
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 544
    :goto_7
    return v0

    .line 542
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setCountryCode(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 544
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setDisassociateStation(Ljava/lang/String;)Z
    .registers 4
    .param p1, "staMac"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 550
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 557
    :goto_7
    return v0

    .line 555
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setDisassociateStation(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 557
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setHiddenSsid(Z)Z
    .registers 4
    .param p1, "hiddenSsid"    # Z

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 570
    :goto_7
    return v0

    .line 568
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setHiddenSsid(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 570
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setMacFilterByIndex(ILjava/lang/String;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 599
    :goto_7
    return v0

    .line 597
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setMacFilterByIndex(ILjava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 599
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setMacFilterCount(I)Z
    .registers 4
    .param p1, "filterCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 611
    :goto_7
    return v0

    .line 609
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setMacFilterCount(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 611
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z
    .registers 3
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    .prologue
    .line 617
    :try_start_0
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 619
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setMacaddracl(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 583
    :goto_7
    return v0

    .line 581
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setMacaddracl(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 583
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setMaxNumOfClients(I)Z
    .registers 4
    .param p1, "numClient"    # I

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 632
    :goto_7
    return v0

    .line 630
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setMaxNumOfClients(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 632
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    .registers 7
    .param p1, "bEnable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "channel"    # I
    .param p4, "maxScb"    # I

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 646
    :goto_7
    return v0

    .line 644
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 646
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;)Z
    .registers 4
    .param p1, "opMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    .prologue
    const/4 v0, 0x0

    .line 652
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 659
    :goto_7
    return v0

    .line 657
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 659
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setPrivacySeparator(Z)Z
    .registers 4
    .param p1, "privacySep"    # Z

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 671
    :goto_7
    return v0

    .line 669
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setPrivacySeparator(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 671
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;)Z
    .registers 4
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    .prologue
    const/4 v0, 0x0

    .line 677
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 684
    :goto_7
    return v0

    .line 682
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 684
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z
    .registers 7
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "channel"    # I
    .param p3, "maxScb"    # I
    .param p4, "bWoNmService"    # Z

    .prologue
    const/4 v0, 0x0

    .line 690
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 697
    :goto_7
    return v0

    .line 695
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 697
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setSsid(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 702
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 709
    :goto_7
    return v0

    .line 707
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setSsid(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 709
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setTxPower(I)I
    .registers 4
    .param p1, "txPower"    # I

    .prologue
    const/4 v0, 0x0

    .line 791
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 798
    :goto_7
    return v0

    .line 796
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setTxPower(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 798
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWepKey1(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 730
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 737
    :goto_7
    return v0

    .line 735
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWepKey1(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 737
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWepKey2(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 749
    :goto_7
    return v0

    .line 747
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWepKey2(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 749
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWepKey3(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 761
    :goto_7
    return v0

    .line 759
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWepKey3(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 761
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWepKey4(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 773
    :goto_7
    return v0

    .line 771
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWepKey4(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 773
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWepKeyIndex(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 718
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 725
    :goto_7
    return v0

    .line 723
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWepKeyIndex(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 725
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpaKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "phassphrase"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 786
    :goto_7
    return v0

    .line 784
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpaKey(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 786
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpsCancel()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 815
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 822
    :goto_7
    return v0

    .line 820
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpsCancel()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 822
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpsNfcPwToken(Ljava/lang/String;II)I
    .registers 6
    .param p1, "NDEF"    # Ljava/lang/String;
    .param p2, "isEnabled"    # I
    .param p3, "isNDEF"    # I

    .prologue
    const/4 v0, 0x0

    .line 839
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 846
    :goto_7
    return v0

    .line 844
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpsNfcPwToken(Ljava/lang/String;II)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 846
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "reqNDEF"    # Ljava/lang/String;
    .param p2, "selNDEF"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 875
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 882
    :goto_7
    return v0

    .line 880
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 882
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpsPbc()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 827
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 834
    :goto_7
    return v0

    .line 832
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpsPbc()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 834
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setWpsPin(Ljava/lang/String;I)I
    .registers 5
    .param p1, "PinNum"    # Ljava/lang/String;
    .param p2, "expirationTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 810
    :goto_7
    return v0

    .line 808
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getService()Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;->setWpsPin(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 810
    :catch_11
    move-exception v1

    goto :goto_7
.end method
