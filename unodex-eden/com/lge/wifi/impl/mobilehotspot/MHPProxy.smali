.class public Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
.super Ljava/lang/Object;
.source "MHPProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "mobilehotspot"

.field public static final STATE_DHCP_ERROR:I = -0x1

.field public static final STATE_DHCP_OFF:I = 0x15

.field public static final STATE_DHCP_ON:I = 0x14

.field public static final STATE_MHP_ERROR:I = -0x1

.field public static final STATE_MHP_OFF:I = 0xa

.field public static final STATE_MHP_ON:I = 0xc

.field public static final STATE_MHP_RESUME:I = 0xf

.field public static final STATE_MHP_SUSPEND:I = 0xe

.field public static final STATE_MHP_TURNING_OFF:I = 0xb

.field public static final STATE_MHP_TURNING_ON:I = 0xd

.field public static final STATE_STATION_ASSOC:I = 0x1e

.field public static final STATE_STATION_DISASSOC:I = 0x1f

.field private static mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "MobileHotspotProxy"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mCallback:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;)V
    .registers 4
    .param p1, "service"    # Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "MobileHotspotProxy"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mCallback:Ljava/util/ArrayList;

    .line 77
    if-nez p1, :cond_1b

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1b
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    .line 81
    return-void
.end method

.method private createDevice([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "devicelistmac"    # [Ljava/lang/String;
    .param p2, "devicename"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-lt v1, v2, :cond_22

    .line 153
    const-string v2, "MobileHotspotProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MHP_GOOKY] create device >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0

    .line 149
    :cond_22
    array-length v2, p2

    if-ge v1, v2, :cond_30

    .line 150
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    .registers 4

    .prologue
    .line 58
    const-string v2, "mobilehotspot"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .local v0, "b":Landroid/os/IBinder;
    sget-object v2, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v2, :cond_1c

    .line 62
    const-string v2, "MHPProxy"

    const-string v3, "[MHP_GOOKY] Create Proxy Object.."

    invoke-static {v2, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    move-result-object v1

    .line 64
    .local v1, "service":Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;
    new-instance v2, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-direct {v2, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;-><init>(Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;)V

    sput-object v2, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 67
    .end local v1    # "service":Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;
    :cond_1c
    sget-object v2, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    return-object v2
.end method

.method private getRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    .registers 4
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "devicename"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-direct {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addConnectedDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->connectFromRemoteDevice(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 433
    :goto_5
    return-void

    .line 430
    :catch_6
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    .line 200
    :goto_5
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->changedAllowedDevice()V

    .line 201
    const/4 v1, 0x1

    return v1

    .line 196
    :catch_a
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public declared-synchronized addMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 906
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->addMacFilterAllowList(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 912
    :goto_7
    monitor-exit p0

    return v1

    .line 907
    :catch_9
    move-exception v0

    .line 909
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 912
    const/4 v1, 0x0

    goto :goto_7

    .line 906
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 917
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->addMacFilterDenyList(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 923
    :goto_7
    monitor-exit p0

    return v1

    .line 918
    :catch_9
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 923
    const/4 v1, 0x0

    goto :goto_7

    .line 917
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public changedAllowedDevice()V
    .registers 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 263
    return-void

    .line 261
    :cond_a
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;->onChangedAllowedDevice()V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clearPortFilterRule()V
    .registers 3

    .prologue
    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->clearPortFilterRule()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1072
    :goto_5
    return-void

    .line 1068
    :catch_6
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public clearPortForwardingrRule()V
    .registers 3

    .prologue
    .line 1088
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->clearPortForwardingrRule()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1093
    :goto_5
    return-void

    .line 1089
    :catch_6
    move-exception v0

    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public dchpRestart()Z
    .registers 3

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->dhcpRestart()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 291
    :goto_6
    return v1

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 291
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public deAuthMac(Ljava/lang/String;)Z
    .registers 4
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->deAuthMac(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 442
    :goto_6
    return v1

    .line 439
    :catch_7
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 442
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public diableDhcpServer(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 278
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Dhcp Power off >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->dhcpDisable(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 283
    :goto_19
    return-void

    .line 280
    :catch_1a
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public declared-synchronized disableMobileHotspot()V
    .registers 3

    .prologue
    .line 410
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->disable(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 414
    :goto_7
    monitor-exit p0

    return-void

    .line 410
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_c
    move-exception v0

    goto :goto_7
.end method

.method public doClearNATRule()V
    .registers 4

    .prologue
    .line 362
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[MHP_GOOKY] MobileHotspot Clear NAT Rule"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->clearNATRule()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 367
    :goto_c
    return-void

    .line 364
    :catch_d
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public doDisableNATMasq()V
    .registers 4

    .prologue
    .line 350
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[antonio] MobileHotspot Clear NAT Rule"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->disableNatMasquerade()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 357
    :goto_c
    return-void

    .line 352
    :catch_d
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public doMhsCdmaDataConnect()V
    .registers 4

    .prologue
    .line 390
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[MHP_GOOKY] MobileHotspot 3GData MhsCdmaDataConnect"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->mhsCdmaDataConnect()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 395
    :goto_c
    return-void

    .line 392
    :catch_d
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public doMhsCdmaDataDisconnect()V
    .registers 4

    .prologue
    .line 381
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[MHP_GOOKY] MobileHotspot 3GData MhsCdmaDataDisconnect"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->mhsCdmaDataDisconnect()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 386
    :goto_c
    return-void

    .line 383
    :catch_d
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public enableDhcpServer(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 268
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Dhcp Power on >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->dhcpEnable(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 273
    :goto_19
    return-void

    .line 270
    :catch_1a
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public enableMhsCdmaDataRestart()V
    .registers 4

    .prologue
    .line 372
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[MHP_GOOKY] MobileHotspot 3GData Restart"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->mhsCdmaDataRestart()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 377
    :goto_c
    return-void

    .line 374
    :catch_d
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public declared-synchronized enableMobileHotspot(Z)Z
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Enable MobileHotspot >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->enable(Z)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1d
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    move-result v1

    .line 342
    :goto_1b
    monitor-exit p0

    return v1

    .line 340
    :catch_1d
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    .line 342
    const/4 v1, 0x0

    goto :goto_1b

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get80211Mode()I
    .registers 3

    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->get802Mode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 749
    :goto_6
    return v1

    .line 745
    :catch_7
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 749
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getAllConnectedDeviceList()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->listConnectedDevices()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->listConnectedDevicesname()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->createDevice([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 140
    :goto_10
    return-object v1

    .line 137
    :catch_11
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getAllowedDevicesList()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->listAllowedDevices()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->listConnectedDevicesname()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->createDevice([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 130
    :goto_10
    return-object v1

    .line 127
    :catch_11
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1028
    :goto_6
    return-object v1

    .line 1025
    :catch_7
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1028
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1046
    :goto_6
    return-object v1

    .line 1043
    :catch_7
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1046
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAssocListCount()I
    .registers 3

    .prologue
    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getAssocListCount()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1018
    :goto_6
    return v1

    .line 1013
    :catch_7
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1018
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAuthentication()I
    .registers 3

    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getAuthentication()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 565
    :goto_6
    return v1

    .line 560
    :catch_7
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 565
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getBroadcastChannel()I
    .registers 3

    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getBroadcastChannel()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 729
    :goto_6
    return v1

    .line 725
    :catch_7
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 729
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public declared-synchronized getBroadcastSSID()I
    .registers 3

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getBroadcastSSID()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 484
    :goto_7
    monitor-exit p0

    return v1

    .line 480
    :catch_9
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 484
    const/4 v1, -0x1

    goto :goto_7

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnecteddDevicesList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->listConnectedDevices()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 254
    :goto_6
    return-object v1

    .line 251
    :catch_7
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpDns1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpDNS1()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 793
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDhcpDns2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpDNS2()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 802
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDhcpEndIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpEndIp()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 766
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDhcpGateway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpGateway()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 784
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDhcpMask()Ljava/lang/String;
    .registers 2

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpMask()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 775
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDhcpStartIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getDhcpStartIp()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 757
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getEncryption()I
    .registers 3

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getEncryption()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 577
    :goto_6
    return v1

    .line 572
    :catch_7
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 577
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getFrequency()I
    .registers 3

    .prologue
    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getFrequency()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1241
    :goto_6
    return v1

    .line 1239
    :catch_7
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1241
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getMacFilterByIndex(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 948
    :goto_6
    return-object v1

    .line 943
    :catch_7
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 948
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMacFilterCount()I
    .registers 3

    .prologue
    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getMacFilterCount()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 996
    :goto_6
    return v1

    .line 991
    :catch_7
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 996
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public declared-synchronized getMacFilterMode()I
    .registers 3

    .prologue
    .line 966
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getMacFilterMode()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 972
    :goto_7
    monitor-exit p0

    return v1

    .line 967
    :catch_9
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 972
    const/4 v1, -0x1

    goto :goto_7

    .line 966
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMaxClients()I
    .registers 3

    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getMaxClients()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 901
    :goto_6
    return v1

    .line 896
    :catch_7
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 901
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getMobileHotspotState()I
    .registers 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getMobileHotspotState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 100
    :goto_6
    return v1

    .line 97
    :catch_7
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 464
    :goto_6
    return-object v1

    .line 459
    :catch_7
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 464
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPortFilteringList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getPortFilteringList()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1102
    :goto_6
    return-object v1

    .line 1099
    :catch_7
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1102
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPortforwardingList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getPortforwardingList()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1177
    :goto_6
    return-object v1

    .line 1174
    :catch_7
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1177
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSoftapIsolation()Z
    .registers 3

    .prologue
    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getSoftapIsolation()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1222
    :goto_6
    return v1

    .line 1220
    :catch_7
    move-exception v0

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1222
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStaticIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getStaticIp()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 821
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getStaticSubnet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getStaticSubnet()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 840
    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getWEPKey1()Ljava/lang/String;
    .registers 3

    .prologue
    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWEPKey1()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 638
    :goto_6
    return-object v1

    .line 633
    :catch_7
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 638
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWEPKey2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWEPKey2()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 650
    :goto_6
    return-object v1

    .line 645
    :catch_7
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 650
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWEPKey3()Ljava/lang/String;
    .registers 3

    .prologue
    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWEPKey3()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 662
    :goto_6
    return-object v1

    .line 657
    :catch_7
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 662
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWEPKey4()Ljava/lang/String;
    .registers 3

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWEPKey4()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 674
    :goto_6
    return-object v1

    .line 669
    :catch_7
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 674
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWEPKeyIndex()I
    .registers 3

    .prologue
    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWEPKeyIndex()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 709
    :goto_6
    return v1

    .line 704
    :catch_7
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 709
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWPAKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->getWPAKey()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 697
    :goto_6
    return-object v1

    .line 693
    :catch_7
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 697
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public initIpTable()V
    .registers 3

    .prologue
    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->initIpTable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1062
    :goto_5
    return-void

    .line 1058
    :catch_6
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public insertDeniedList(Ljava/lang/String;)V
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->insertDeniedList(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 170
    :goto_5
    return-void

    .line 166
    :catch_6
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public isMHPEnabled()Z
    .registers 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 90
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMhsAvailable()Z
    .registers 4

    .prologue
    .line 399
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    const-string v2, "[MHP_GOOKY] MobileHotspot isMhsDataAvailable"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->isMhsDataAvailable()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    .line 403
    :goto_d
    return v1

    .line 401
    :catch_e
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 403
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUsed()Z
    .registers 3

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->isUsed()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 120
    :goto_6
    return v1

    .line 116
    :catch_7
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registCallback(Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;)V
    .registers 3
    .param p1, "cb"    # Lcom/lge/wifi/impl/mobilehotspot/MHPProxy$Callback;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    return-void
.end method

.method public removeAllAllowedDevices()Z
    .registers 3

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->removeAllAllowedDevices()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 234
    :goto_6
    return v1

    .line 231
    :catch_7
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 234
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeAllConnectedDevices()Z
    .registers 3

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->removeAllConnectedDevices()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 244
    :goto_6
    return v1

    .line 241
    :catch_7
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeAllowedDevice(Ljava/lang/String;)Z
    .registers 6
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] removeAllowedDevice >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->removeAllowedDevice(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v1

    .line 224
    :goto_1a
    return v1

    .line 221
    :catch_1b
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 224
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public removeAlltheList()V
    .registers 3

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->removeAlltheList()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 190
    :goto_5
    return-void

    .line 186
    :catch_6
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public removeDeniedList(Ljava/lang/String;)V
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->removeDeniedList(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 180
    :goto_5
    return-void

    .line 176
    :catch_6
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public set80211Mode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->set802Mode(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 739
    :goto_5
    return-void

    .line 736
    :catch_6
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setAllowAllPort(Z)Z
    .registers 4
    .param p1, "allow"    # Z

    .prologue
    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setAllowAll(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1113
    :goto_6
    return v1

    .line 1110
    :catch_7
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1113
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAuthentication(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setAuthentication(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 544
    :goto_6
    return v1

    .line 539
    :catch_7
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setBroadcastChannel(I)V
    .registers 3
    .param p1, "channel"    # I

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setBroadcastChannel(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 719
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized setBroadcastSSID(I)V
    .registers 3
    .param p1, "command"    # I

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setBroadcastSSID(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 474
    :goto_6
    monitor-exit p0

    return-void

    .line 470
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public setCountryCode(I)I
    .registers 4
    .param p1, "countrycode"    # I

    .prologue
    .line 1196
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setCountryCode(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1200
    :goto_6
    return v1

    .line 1197
    :catch_7
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1200
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDhcpDns1(Ljava/lang/String;)Z
    .registers 3
    .param p1, "dns1"    # Ljava/lang/String;

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setDhcpDNS1(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 811
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setDhcpServerEndIp(Ljava/lang/String;)V
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 308
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Set Dhcp End IP >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setDhcpEndIp(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 313
    :goto_19
    return-void

    .line 310
    :catch_1a
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public setDhcpServerGateway(Ljava/lang/String;)V
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 328
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Set Dhcp Gateway >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setDhcpGateway(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 333
    :goto_19
    return-void

    .line 330
    :catch_1a
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public setDhcpServerMask(Ljava/lang/String;)V
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 318
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Set Dhcp Mask >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setDhcpMask(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 323
    :goto_19
    return-void

    .line 320
    :catch_1a
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public setDhcpServerStartIp(Ljava/lang/String;)V
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    const-string v1, "MobileHotspotProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Set Dhcp Start IP >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setDhcpStartIp(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 303
    :goto_19
    return-void

    .line 300
    :catch_1a
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method

.method public setEmergencyCall(Z)V
    .registers 3
    .param p1, "isECM"    # Z

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setEmergencyCall(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 423
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setEncryption(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setEncryption(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 532
    :goto_6
    return v1

    .line 527
    :catch_7
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 532
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setForward()Z
    .registers 3

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setForward()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1138
    :goto_6
    return v1

    .line 1135
    :catch_7
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1138
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setFrequency(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setFrequency(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1233
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized setMacFilterByIndex(ILjava/lang/String;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 930
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMacFilterByIndex(ILjava/lang/String;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 936
    :goto_7
    monitor-exit p0

    return v1

    .line 931
    :catch_9
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 936
    const/4 v1, 0x0

    goto :goto_7

    .line 930
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMacFilterCount(I)Z
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMacFilterCount(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 984
    :goto_6
    return v1

    .line 979
    :catch_7
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 984
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public declared-synchronized setMacFilterMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 954
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMacFilterMode(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 960
    :goto_7
    monitor-exit p0

    return v1

    .line 955
    :catch_9
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 960
    const/4 v1, 0x0

    goto :goto_7

    .line 954
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMacaddracl(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMacaddracl(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 862
    :goto_6
    return v1

    .line 857
    :catch_7
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 862
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMasquerade()Z
    .registers 3

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMasquerade()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1124
    :goto_6
    return v1

    .line 1121
    :catch_7
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1124
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public declared-synchronized setMaxAssoc(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 882
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMaxAssoc(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 888
    :goto_7
    monitor-exit p0

    return v1

    .line 883
    :catch_9
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 888
    const/4 v1, 0x0

    goto :goto_7

    .line 882
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaxClients(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 868
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMaxClients(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-result v1

    .line 874
    :goto_7
    monitor-exit p0

    return v1

    .line 869
    :catch_9
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 874
    const/4 v1, 0x0

    goto :goto_7

    .line 868
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMobileHotspotState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMobileHotspotState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 110
    :goto_5
    return-void

    .line 107
    :catch_6
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setMssChange()Z
    .registers 3

    .prologue
    .line 1161
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setMssChange()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1165
    :goto_6
    return v1

    .line 1162
    :catch_7
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1165
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setName(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 453
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPortFiltering(IIII)Z
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "type"    # I
    .param p4, "addORdel"    # I

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setPortFiltering(IIII)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1081
    :goto_6
    return v1

    .line 1078
    :catch_7
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1081
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setPortforwarding(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "port"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "addORdel"    # I

    .prologue
    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setPortforwarding(ILjava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1151
    :goto_6
    return v1

    .line 1148
    :catch_7
    move-exception v0

    .line 1150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1151
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSecurity(I)V
    .registers 5
    .param p1, "option"    # I

    .prologue
    .line 489
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_SHARED:I

    .line 491
    .local v0, "mode":I
    packed-switch p1, :pswitch_data_2e

    .line 521
    :goto_5
    return-void

    .line 494
    :pswitch_6
    :try_start_6
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_NONE:I

    .line 495
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setAuthentication(I)Z

    goto :goto_5

    :catch_e
    move-exception v1

    goto :goto_5

    .line 499
    :pswitch_10
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_SHARED:I

    .line 500
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setAuthentication(I)Z

    .line 501
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_WEP128:I

    invoke-interface {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setEncryption(I)Z

    goto :goto_5

    .line 510
    :pswitch_1f
    sget v0, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_WPA_AUTH_WPA2PSK:I

    .line 511
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setAuthentication(I)Z

    .line 512
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_ALGO_AES:I

    invoke-interface {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setEncryption(I)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2d} :catch_e

    goto :goto_5

    .line 491
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method public setSoftapIsolation(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setSoftapIsolation(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1211
    :goto_6
    return v1

    .line 1209
    :catch_7
    move-exception v0

    .line 1210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1211
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setStaticIp(Ljava/lang/String;)V
    .registers 4
    .param p1, "staticIp"    # Ljava/lang/String;

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setStaticIp(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 832
    :goto_5
    return-void

    .line 829
    :catch_6
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setStaticSubnet(Ljava/lang/String;)V
    .registers 4
    .param p1, "staticSubnet"    # Ljava/lang/String;

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setStaticSubnet(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 851
    :goto_5
    return-void

    .line 848
    :catch_6
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setTxPower(I)I
    .registers 3
    .param p1, "txPower"    # I

    .prologue
    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setTxPower(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 1250
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, -0x1

    goto :goto_6
.end method

.method public setUsageTime(I)V
    .registers 4
    .param p1, "time"    # I

    .prologue
    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setBatteryUsageTime(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1007
    :goto_5
    return-void

    .line 1003
    :catch_6
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setWEPKey1(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWEPKey1(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 589
    :goto_6
    return v1

    .line 584
    :catch_7
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWEPKey2(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWEPKey2(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 601
    :goto_6
    return v1

    .line 596
    :catch_7
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 601
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWEPKey3(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWEPKey3(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 613
    :goto_6
    return v1

    .line 608
    :catch_7
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 613
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWEPKey4(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWEPKey4(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 625
    :goto_6
    return v1

    .line 620
    :catch_7
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 625
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWEPKeyIndex(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWEPKeyIndex(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 686
    :goto_6
    return v1

    .line 681
    :catch_7
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWPAKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->setWPAKey(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 554
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateAllowedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldMacAddr"    # Ljava/lang/String;
    .param p2, "newMacAddr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->mService:Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;

    invoke-interface {v1, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/IMobileHotspot;->updateAllowedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    .line 212
    :goto_5
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->changedAllowedDevice()V

    .line 213
    const/4 v1, 0x1

    return v1

    .line 208
    :catch_a
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
