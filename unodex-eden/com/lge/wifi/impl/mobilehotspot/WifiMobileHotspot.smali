.class public Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;
.super Ljava/lang/Object;
.source "WifiMobileHotspot.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiMobileHotspot;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiMobileHotspot"

.field private static mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public disableMobileHotspot()Z
    .registers 2

    .prologue
    .line 58
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 59
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v0, :cond_c

    .line 60
    const/4 v0, 0x0

    .line 64
    :goto_b
    return v0

    .line 62
    :cond_c
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->disableMobileHotspot()V

    .line 64
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public enableMobileHotspot(Z)Z
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 78
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v0, :cond_c

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_b
    return v0

    .line 81
    :cond_c
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->enableMobileHotspot(Z)Z

    .line 82
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 69
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v0, :cond_c

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public isMHPEnabled()Z
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMobileHotspotServiceProxy()Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    .line 51
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    if-nez v0, :cond_c

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;->mMHPProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->isMHPEnabled()Z

    move-result v0

    goto :goto_b
.end method

.method public startService(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    const-string v3, "WifiMobileHotspot"

    const-string v4, "startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_8
    new-instance v2, Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-direct {v2, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_17

    .line 40
    .end local v1    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .local v2, "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    :try_start_d
    const-string v3, "mobilehotspot"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->init()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_15} :catch_20

    move-object v1, v2

    .line 46
    .end local v2    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .restart local v1    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    :goto_16
    return-void

    .line 42
    :catch_17
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    :goto_18
    const-string v3, "WifiMobileHotspot"

    const-string v4, "Failure starting MHP Service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 42
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .restart local v2    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    :catch_20
    move-exception v0

    move-object v1, v2

    .end local v2    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    .restart local v1    # "mMHPService":Lcom/lge/wifi/impl/mobilehotspot/MHPService;
    goto :goto_18
.end method
