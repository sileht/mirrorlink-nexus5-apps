.class public Lcom/lge/systemservice/core/WifiLgeExtManager;
.super Ljava/lang/Object;
.source "WifiLgeExtManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "wifiLgeExtService"

.field private static final TAG:Ljava/lang/String; = "WifiLgeExtManager"


# instance fields
.field private mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/WifiLgeExtManager;Lcom/lge/systemservice/core/IWifiLgeExtManager;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-void
.end method

.method private final getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;
    .registers 5

    .prologue
    .line 33
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-nez v1, :cond_23

    .line 34
    const-string v1, "wifiLgeExtService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    .line 36
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    if-eqz v1, :cond_23

    .line 38
    :try_start_14
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/WifiLgeExtManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/WifiLgeExtManager$1;-><init>(Lcom/lge/systemservice/core/WifiLgeExtManager;)V

    .line 41
    const/4 v3, 0x0

    .line 38
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 45
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    return-object v1

    .line 42
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_26
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/WifiLgeExtManager;->mWifiLgeExtManager:Lcom/lge/systemservice/core/IWifiLgeExtManager;

    goto :goto_23
.end method


# virtual methods
.method public Channel5G_HiddenMenu(II)Z
    .registers 7
    .param p1, "Channel"    # I
    .param p2, "BondingInfo"    # I

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 501
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 502
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_e
    return v1

    .line 507
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel5G_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel5G_HiddenMenu(II)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 510
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 513
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public Channel_HiddenMenu(II)Z
    .registers 7
    .param p1, "Channel"    # I
    .param p2, "BondingInfo"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 471
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 472
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_e
    return v1

    .line 477
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Channel_HiddenMenu(II)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 480
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 483
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Channel_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 90
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 91
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_e
    return v1

    .line 96
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] CloseDUT_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CloseDUT_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 99
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 102
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] CloseDUT_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public CodeRate_HiddenMenu(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1266
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1267
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_10

    .line 1268
    const-string v1, "WifiLgeExtManager"

    const-string v2, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v1, -0x1

    .line 1280
    :goto_f
    return v1

    .line 1273
    :cond_10
    :try_start_10
    const-string v2, "WifiLgeExtManager"

    const-string v3, "CodeRate_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->CodeRate_HiddenMenu(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1a} :catch_25

    move-result v1

    goto :goto_f

    .line 1276
    :catch_1c
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "CodeRate_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1279
    :catch_25
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "CodeRate_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public FRError_HiddenMenu()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 818
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 819
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 820
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_e
    return v1

    .line 825
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRError_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRError_HiddenMenu()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 828
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 831
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRError_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public FRGood_HiddenMenu()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 789
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 790
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 791
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_e
    return v1

    .line 796
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRGood_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRGood_HiddenMenu()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 799
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 802
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRGood_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public FRTotal_HiddenMenu()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 761
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 762
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 763
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_e
    return v1

    .line 768
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRTotal_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FRTotal_HiddenMenu()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 771
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 774
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] FRTotal_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "band"    # Ljava/lang/String;
    .param p2, "ChannelNo"    # I

    .prologue
    const/4 v1, 0x0

    .line 930
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 931
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 932
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_e
    return v1

    .line 937
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy5G_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 940
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 943
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy5G_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "band"    # Ljava/lang/String;
    .param p2, "ChannelNo"    # I

    .prologue
    const/4 v1, 0x0

    .line 888
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 889
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 890
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_e
    return v1

    .line 895
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->FrequencyAccuracy_HiddenMenu(Ljava/lang/String;I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 898
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 901
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] FrequencyAccuracy_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public IsRunning_HiddenMenu()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1152
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1153
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1154
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_e
    return v1

    .line 1159
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] IsRunning_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->IsRunning_HiddenMenu()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1162
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1165
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] IsRunning_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public NoModTxStart_BCM_HiddenMenu(I)Z
    .registers 6
    .param p1, "channel"    # I

    .prologue
    const/4 v1, 0x0

    .line 1097
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1098
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1099
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_e
    return v1

    .line 1104
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] NoModTxStart_BCM_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_BCM_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1107
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1110
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] NoModTxStart_BCM_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public NoModTxStart_HiddenMenu()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1069
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1070
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1071
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_e
    return v1

    .line 1076
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStart_HiddenMenu()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1079
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1082
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public NoModTxStop_HiddenMenu()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1124
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1125
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1126
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :goto_e
    return v1

    .line 1131
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->NoModTxStop_HiddenMenu()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1134
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1137
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public OpMode_HiddenMenu(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1238
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1239
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_10

    .line 1240
    const-string v1, "WifiLgeExtManager"

    const-string v2, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/4 v1, -0x1

    .line 1252
    :goto_f
    return v1

    .line 1245
    :cond_10
    :try_start_10
    const-string v2, "WifiLgeExtManager"

    const-string v3, "OpMode_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpMode_HiddenMenu(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1a} :catch_25

    move-result v1

    goto :goto_f

    .line 1248
    :catch_1c
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "OpMode_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1251
    :catch_25
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "OpMode_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 61
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 62
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_e
    return v1

    .line 67
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] OpenDUT_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OpenDUT_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 70
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 73
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] OpenDUT_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public OtaDisable_HiddenMenu()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1042
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1043
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_e
    return v1

    .line 1048
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] OtaDisable_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaDisable_HiddenMenu()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1051
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1054
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] OtaDisable_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public OtaEnable_HiddenMenu()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1015
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1016
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_e
    return v1

    .line 1021
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] OtaEnable_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->OtaEnable_HiddenMenu()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1024
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1027
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] OtaEnabled_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public RSSI_HiddenMenu()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 845
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 846
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 847
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_e
    return v1

    .line 852
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RSSI_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-interface {v0}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RSSI_HiddenMenu()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 855
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 858
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RSSI_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public RxPER_HiddenMenu(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1210
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1211
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_10

    .line 1212
    const-string v1, "WifiLgeExtManager"

    const-string v2, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, -0x1

    .line 1224
    :goto_f
    return v1

    .line 1217
    :cond_10
    :try_start_10
    const-string v2, "WifiLgeExtManager"

    const-string v3, "RxPER_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1a} :catch_25

    move-result v1

    goto :goto_f

    .line 1220
    :catch_1c
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "RxPER_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1223
    :catch_25
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "RxPER_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public RxStart_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 178
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 179
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_e
    return v1

    .line 184
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStart_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStart_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 187
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 190
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public RxStop_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 207
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 208
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_e
    return v1

    .line 213
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStop_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->RxStop_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 216
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 219
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] RxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public Set11nPreamble_HiddenMenu(I)Z
    .registers 6
    .param p1, "Preamble"    # I

    .prologue
    const/4 v1, 0x0

    .line 733
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 734
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 735
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_e
    return v1

    .line 740
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Set11nPreamble_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->Set11nPreamble_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 743
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Set11nPreamble_HiddenMenu is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 746
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Set11nPreamble_HiddenMenu is is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public SetChainExt_HiddenMenu(I)Z
    .registers 6
    .param p1, "chainValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 1323
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1324
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1325
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_e
    return v1

    .line 1330
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChainExt_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChainExt_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1333
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChainExt_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1336
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChainExt_HiddenMenu is failed2."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public SetChain_HiddenMenu(I)Z
    .registers 6
    .param p1, "chainValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 1295
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1296
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1297
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_e
    return v1

    .line 1302
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChain_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetChain_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1305
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChain_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1308
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetChain_HiddenMenu is failed2."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public SetPreamble_HiddenMenu(I)Z
    .registers 6
    .param p1, "Preamble"    # I

    .prologue
    const/4 v1, 0x0

    .line 690
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 691
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 692
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_e
    return v1

    .line 697
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetPreamble_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetPreamble_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 700
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetPreamble_HiddenMenu is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 703
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetPreamble_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public SetTxBF_HiddenMenu(I)Z
    .registers 6
    .param p1, "Value"    # I

    .prologue
    const/4 v1, 0x0

    .line 1351
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1352
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 1353
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :goto_e
    return v1

    .line 1358
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetTxBF_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->SetTxBF_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 1361
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetTxBF_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1364
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] SetTxBF_HiddenMenu is failed2."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TXBW_40M_HiddenMenu(I)Z
    .registers 6
    .param p1, "ChannelNo"    # I

    .prologue
    const/4 v1, 0x0

    .line 959
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 960
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 961
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_e
    return v1

    .line 966
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_40M_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 969
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 972
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yoohoo] TXBW_40M_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TXBW_80M_HiddenMenu(I)Z
    .registers 6
    .param p1, "ChannelNo"    # I

    .prologue
    const/4 v1, 0x0

    .line 987
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 988
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 989
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :goto_e
    return v1

    .line 994
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TXBW_80M_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 997
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1000
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager][yeongsu.wu] TXBW_80M_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .registers 6
    .param p1, "FrameNumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 620
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 621
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_e
    return v1

    .line 626
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstFrames_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstFrames_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 629
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 632
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstFrames_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .registers 6
    .param p1, "SIFS"    # I

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 560
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 561
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_e
    return v1

    .line 566
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstInterval_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxBurstInterval_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 569
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 572
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxBurstInterval_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate11ac_HiddenMenu(IIII)Z
    .registers 9
    .param p1, "nDataRate"    # I
    .param p2, "nBandWidth"    # I
    .param p3, "nChannel"    # I
    .param p4, "nGI"    # I

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 442
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 443
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_e
    return v1

    .line 448
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11ac_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11ac_HiddenMenu(IIII)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 451
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 454
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11ac_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate11n40M_HiddenMenu(III)Z
    .registers 8
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 351
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 352
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_e
    return v1

    .line 357
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n40M_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n40M_HiddenMenu(III)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 360
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 363
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n40M_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate11n5G40M_HiddenMenu(III)Z
    .registers 8
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 411
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 412
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_e
    return v1

    .line 417
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G40M_HiddenMenu(III)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 420
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 423
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G40M_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate11n5G_HiddenMenu(III)Z
    .registers 8
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 381
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 382
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_e
    return v1

    .line 387
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n5G_HiddenMenu(III)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 390
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 393
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate11n_HiddenMenu(III)Z
    .registers 8
    .param p1, "nDataRate"    # I
    .param p2, "nFrameFormat"    # I
    .param p3, "nGI"    # I

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 321
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 322
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_e
    return v1

    .line 327
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate11n_HiddenMenu(III)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 330
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 333
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate11n_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .param p1, "Datarate"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 291
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 292
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_e
    return v1

    .line 297
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate5G_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate5G_HiddenMenu(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 300
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 303
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate5G_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .param p1, "Datarate"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 249
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 250
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_e
    return v1

    .line 255
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 258
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 261
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDataRate_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dstMacAddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 649
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 650
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_e
    return v1

    .line 655
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDestAddress_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 658
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 661
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxDestAddress_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxGain_HiddenMenu(I)Z
    .registers 6
    .param p1, "TxGain"    # I

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 530
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 531
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_e
    return v1

    .line 536
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxGain_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxGain_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 539
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 542
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxGain_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxPER_HiddenMenu(Ljava/lang/String;)I
    .registers 6
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 1183
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_10

    .line 1184
    const-string v1, "WifiLgeExtManager"

    const-string v2, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v1, -0x1

    .line 1196
    :goto_f
    return v1

    .line 1189
    :cond_10
    :try_start_10
    const-string v2, "WifiLgeExtManager"

    const-string v3, "TxPER_HiddenMenu called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPER_HiddenMenu(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1a} :catch_25

    move-result v1

    goto :goto_f

    .line 1192
    :catch_1c
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "TxPER_HiddenMenu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1195
    :catch_25
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "TxPER_HiddenMenu failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .registers 6
    .param p1, "payLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 590
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 591
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_e
    return v1

    .line 596
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxPayloadLength_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxPayloadLength_HiddenMenu(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 599
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 602
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxPayloadLength_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxStart_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 119
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 120
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_e
    return v1

    .line 125
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStart_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 128
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 131
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStart_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public TxStop_HiddenMenu(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Lcom/lge/systemservice/core/WifiLgeExtManager;->getIWifiLgeExtManager()Lcom/lge/systemservice/core/IWifiLgeExtManager;

    move-result-object v0

    .line 148
    .local v0, "wifiLgExtMgr":Lcom/lge/systemservice/core/IWifiLgeExtManager;
    if-nez v0, :cond_f

    .line 149
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] Cannot get IWifiLgeExtManager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_e
    return v1

    .line 154
    :cond_f
    :try_start_f
    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is called."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/IWifiLgeExtManager;->TxStop_HiddenMenu(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_24

    move-result v1

    goto :goto_e

    .line 157
    :catch_1b
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 160
    :catch_24
    move-exception v2

    const-string v2, "WifiLgeExtManager"

    const-string v3, "[WifiManager] TxStop_HiddenMenu is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
