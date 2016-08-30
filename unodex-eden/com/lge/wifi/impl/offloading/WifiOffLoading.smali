.class public Lcom/lge/wifi/impl/offloading/WifiOffLoading;
.super Ljava/lang/Object;
.source "WifiOffLoading.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiOffLoading;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOffLoading"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public disableBackgroundOffloading()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 54
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on disableBackgroundOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_d
    return-void

    .line 57
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->disableBackgroundOffloading()V

    goto :goto_d
.end method

.method public disableWifioffloadTimerReminder()V
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 87
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on disableWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_d
    return-void

    .line 90
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->disableWifioffloadTimerReminder()V

    goto :goto_d
.end method

.method public getWifiOffloadingStart()I
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 137
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on getWifiOffloadingStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getWifiOffloadingStart()I

    move-result v0

    goto :goto_e
.end method

.method public isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 62
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on isOffloadingAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_e
.end method

.method public isOffloadingReminder_on()I
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 78
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on isOffloadingReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isOffloadingReminder_on()I

    move-result v0

    goto :goto_e
.end method

.method public isOffloadingTimer_on()Z
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 70
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on isOffloadingTimer_on()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isOffloadingTimer_on()Z

    move-result v0

    goto :goto_e
.end method

.method public isWifiOffloadingEnabled()I
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 119
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on isWifiOffloadingEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isWifiOffloadingEnabled()I

    move-result v0

    goto :goto_e
.end method

.method public processingOffloading()V
    .registers 3

    .prologue
    .line 45
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 46
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on processingOffloading()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_d
    return-void

    .line 49
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->processingOffloading()V

    goto :goto_d
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .registers 4
    .param p1, "check"    # I

    .prologue
    .line 102
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_f

    .line 103
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on resetWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_e
    return v0

    :cond_f
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->resetWifioffloadTimerReminder(I)Z

    move-result v0

    goto :goto_e
.end method

.method public setWifiOffloadOngoing(Z)V
    .registers 4
    .param p1, "OffloadOngoing"    # Z

    .prologue
    .line 110
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 111
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on setWifiOffloadOngoing()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_d
    return-void

    .line 114
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->setWifiOffloadOngoing(Z)V

    goto :goto_d
.end method

.method public setWifiOffloadingStart(I)V
    .registers 4
    .param p1, "WiFiOffloadingStart"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 128
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on setWifiOffloadingStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_d
    return-void

    .line 131
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->setWifiOffloadingStart(I)V

    goto :goto_d
.end method

.method public startService(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    const-string v3, "WifiOffLoading"

    const-string v4, "startService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_8
    new-instance v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {v2, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_14

    .line 36
    .end local v1    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .local v2, "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    :try_start_d
    const-string v3, "wifiOffloadingService"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_1d

    move-object v1, v2

    .line 41
    .end local v2    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .restart local v1    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    :goto_13
    return-void

    .line 37
    :catch_14
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Throwable;
    :goto_15
    const-string v3, "WifiOffLoading"

    const-string v4, "Failure starting WiFi Offloading Service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .restart local v2    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    :catch_1d
    move-exception v0

    move-object v1, v2

    .end local v2    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    .restart local v1    # "wifiOffloadingService":Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
    goto :goto_15
.end method

.method public stopWifioffloadTimer()V
    .registers 3

    .prologue
    .line 94
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 95
    const-string v0, "WifiOffLoading"

    const-string v1, "WiFiOffloadingManager.getInstance is null!! on stopWifioffloadTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_d
    return-void

    .line 98
    :cond_e
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->stopWifioffloadTimer()V

    goto :goto_d
.end method
