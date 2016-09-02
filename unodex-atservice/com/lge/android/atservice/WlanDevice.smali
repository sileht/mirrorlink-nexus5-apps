.class public Lcom/lge/android/atservice/WlanDevice;
.super Lcom/lge/android/atservice/Device;
.source "WlanDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WlanDevice"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "WlanDevice"

    const-string/jumbo v1, "Create WlanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/lge/android/atservice/WlanDevice;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    return-void
.end method


# virtual methods
.method public PowerOff()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 42
    const/4 v0, -0x1

    return v0

    .line 45
    :cond_13
    return v1
.end method

.method public PowerOn()I
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 31
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 32
    const/4 v0, -0x1

    return v0

    .line 35
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public isPoweredOn()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/android/atservice/WlanDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method
