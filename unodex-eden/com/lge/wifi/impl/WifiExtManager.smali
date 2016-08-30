.class public Lcom/lge/wifi/impl/WifiExtManager;
.super Ljava/lang/Object;
.source "WifiExtManager.java"


# static fields
.field public static final ACTION_HS20_ANQP_FETCH_START:Ljava/lang/String; = "android.net.wifi.HS20_ANQP_FETCH_START"

.field public static final ACTION_HS20_AP_EVENT:Ljava/lang/String; = "android.net.wifi.HS20_AP_EVENT"

.field public static final ACTION_HS20_TRY_CONNECTION:Ljava/lang/String; = "android.net.wifi.HS20_TRY_CONNECTION"

.field public static final EXTRA_HS20_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_HS20_OPERATOR_FRIENDLY_NAME:Ljava/lang/String; = "operator"

.field public static final EXTRA_HS20_RC_IND:Ljava/lang/String; = "roamingInd"

.field public static final EXTRA_HS20_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_HS20_VENUE_NAME:Ljava/lang/String; = "venue"

.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiExtService"

.field private static final TAG:Ljava/lang/String; = "WifiExtManager"

.field private static mService:Lcom/lge/wifi/impl/IWifiExtManager;

.field private static mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/lge/wifi/impl/WifiExtManager;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    .line 32
    sput-object v0, Lcom/lge/wifi/impl/WifiExtManager;->mService:Lcom/lge/wifi/impl/IWifiExtManager;

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/IWifiExtManager;)V
    .registers 2
    .param p1, "service"    # Lcom/lge/wifi/impl/IWifiExtManager;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sput-object p1, Lcom/lge/wifi/impl/WifiExtManager;->mService:Lcom/lge/wifi/impl/IWifiExtManager;

    .line 126
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/WifiExtManager;
    .registers 5

    .prologue
    .line 129
    sget-object v2, Lcom/lge/wifi/impl/WifiExtManager;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    if-nez v2, :cond_29

    .line 130
    const-string v2, "wifiExtService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    .line 132
    .local v1, "service":Lcom/lge/wifi/impl/IWifiExtManager;
    new-instance v2, Lcom/lge/wifi/impl/WifiExtManager;

    invoke-direct {v2, v1}, Lcom/lge/wifi/impl/WifiExtManager;-><init>(Lcom/lge/wifi/impl/IWifiExtManager;)V

    sput-object v2, Lcom/lge/wifi/impl/WifiExtManager;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    .line 133
    const-string v2, "WifiExtManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WifiExtManager service = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_29
    sget-object v2, Lcom/lge/wifi/impl/WifiExtManager;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    return-object v2
.end method

.method private static getService()Lcom/lge/wifi/impl/IWifiExtManager;
    .registers 5

    .prologue
    .line 111
    sget-object v2, Lcom/lge/wifi/impl/WifiExtManager;->mService:Lcom/lge/wifi/impl/IWifiExtManager;

    if-nez v2, :cond_24

    .line 112
    const-string v2, "wifiExtService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    .line 114
    .local v1, "service":Lcom/lge/wifi/impl/IWifiExtManager;
    const-string v2, "WifiExtManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " mService is null, so re-init : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sput-object v1, Lcom/lge/wifi/impl/WifiExtManager;->mService:Lcom/lge/wifi/impl/IWifiExtManager;

    .line 118
    :cond_24
    sget-object v2, Lcom/lge/wifi/impl/WifiExtManager;->mService:Lcom/lge/wifi/impl/IWifiExtManager;

    return-object v2
.end method

.method public static getSoftApMaxScb(I)I
    .registers 3
    .param p0, "defaultMaxScb"    # I

    .prologue
    const/4 v0, -0x1

    .line 273
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 280
    :goto_7
    return v0

    .line 278
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lge/wifi/impl/IWifiExtManager;->getSoftApMaxScb(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 280
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public static isVZWMobileHotspotEnabled()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 256
    :goto_7
    return v0

    .line 254
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->isVZWMobileHotspotEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 256
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public static setVZWMobileHotspot(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 268
    :goto_7
    return v0

    .line 266
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lge/wifi/impl/IWifiExtManager;->setVZWMobileHotspot(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 268
    :catch_11
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public getCallingWifiUid()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 297
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 304
    :goto_7
    return v0

    .line 302
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getCallingWifiUid()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 304
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 150
    :goto_7
    return-object v0

    .line 148
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 150
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 201
    :goto_7
    return-object v0

    .line 199
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getMacAddress()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 201
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getP2pState()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 180
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 186
    :goto_7
    return v0

    .line 184
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getP2pState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 186
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getPrepOobConnection()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 329
    :goto_7
    return v0

    .line 327
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getPrepOobConnection()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 329
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public getSecurityType()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 165
    :goto_7
    return v0

    .line 163
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->getSecurityType()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 165
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public isInternetCheckAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 229
    :goto_7
    return v0

    .line 227
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi/impl/IWifiExtManager;->isInternetCheckAvailable()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    .line 229
    :catch_11
    move-exception v1

    goto :goto_7
.end method

.method public setCallingWifiUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 285
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 294
    :goto_6
    return-void

    .line 290
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/IWifiExtManager;->setCallingWifiUid(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 292
    :catch_f
    move-exception v0

    goto :goto_6
.end method

.method public setDLNAEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    if-nez v1, :cond_8

    .line 217
    :goto_7
    return v0

    .line 215
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/wifi/impl/IWifiExtManager;->setDlnaUsing(Z)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move-result v0

    goto :goto_7

    .line 217
    :catch_12
    move-exception v1

    goto :goto_7
.end method

.method public setPrepOobConnection(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 310
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 319
    :goto_6
    return-void

    .line 315
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/IWifiExtManager;->setPrepOobConnection(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 317
    :catch_f
    move-exception v0

    goto :goto_6
.end method

.method public setProvisioned(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 238
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 246
    :goto_6
    return-void

    .line 243
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getService()Lcom/lge/wifi/impl/IWifiExtManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/IWifiExtManager;->setProvisioned(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    :catch_f
    move-exception v0

    goto :goto_6
.end method
