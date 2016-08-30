.class public Lcom/lge/wifi/impl/WifiExtService;
.super Lcom/lge/wifi/impl/IWifiExtManager$Stub;
.source "WifiExtService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiExtService"

.field private static mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "wifiext_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;-><init>()V

    .line 28
    invoke-static {}, Lcom/lge/wifi/impl/WifiServiceExtension;->getInstance()Lcom/lge/wifi/impl/WifiServiceExtension;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    .line 29
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->initWifiServiceExt(Landroid/content/Context;)V

    .line 30
    const-string v0, "WifiExtService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start WifiExtService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public getCallingWifiUid()I
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 116
    const/4 v0, -0x1

    .line 119
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getCallingWifiUid()I

    move-result v0

    goto :goto_5
.end method

.method public getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 38
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v0

    goto :goto_5
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/wifi/impl/WifiLgeExtNative;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pState()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getPrepOobConnection()Z
    .registers 2

    .prologue
    .line 136
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getPrepOobConnection()Z

    move-result v0

    goto :goto_5
.end method

.method public getSecurityType()I
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 44
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSecurityType()I

    move-result v0

    goto :goto_5
.end method

.method public getSoftApMaxScb(I)I
    .registers 4
    .param p1, "defaultMaxScb"    # I

    .prologue
    .line 99
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 100
    const/4 v0, -0x1

    .line 104
    :goto_5
    return v0

    .line 102
    :cond_6
    const-string v0, "WifiExtService"

    const-string v1, "getSoftApMaxScb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->getSoftApMaxScb(I)I

    move-result v0

    goto :goto_5
.end method

.method public isInternetCheckAvailable()Z
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isInternetCheckAvailable()Z

    move-result v0

    goto :goto_5
.end method

.method public isVZWMobileHotspotEnabled()Z
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;->isVZWMobileHotspotEnabled()Z

    move-result v0

    goto :goto_5
.end method

.method public setCallingWifiUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 108
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_5

    .line 112
    :goto_4
    return-void

    .line 111
    :cond_5
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setCallingWifiUid(I)V

    goto :goto_4
.end method

.method public setDlnaUsing(Z)Z
    .registers 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 61
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setDlnaUsing(Z)Z

    move-result v0

    goto :goto_5
.end method

.method public setPrepOobConnection(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 126
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_5

    .line 130
    :goto_4
    return-void

    .line 129
    :cond_5
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setPrepOobConnection(Z)V

    goto :goto_4
.end method

.method public setProvisioned(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 76
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_5

    .line 79
    :goto_4
    return-void

    .line 78
    :cond_5
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_4
.end method

.method public setVZWMobileHotspot(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 91
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/lge/wifi/impl/WifiExtService;->mWifiServiceExt:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/WifiServiceExtension;->setVZWMobileHotspot(Z)Z

    move-result v0

    goto :goto_5
.end method
