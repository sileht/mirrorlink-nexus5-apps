.class public Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;
.super Ljava/lang/Object;
.source "WifiSoftAP.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiSoftAP;


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I = null

.field private static final TAG:Ljava/lang/String; = "WifiSoftAP"


# instance fields
.field private final mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode()[I
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->values()[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    .line 32
    return-void
.end method


# virtual methods
.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    .line 186
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public addMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->addMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    .line 195
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public deAuthMac(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 438
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setDisassociateStation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 439
    const/4 v0, 0x0

    .line 442
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getAllAssocMacListATT()Ljava/util/List;
    .registers 2
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
    .line 48
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAssocListCount()I
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getAssoStaMacListCount()I

    move-result v0

    .line 453
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "iIndex"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 299
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMacFilterCount()I
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterCount()I

    move-result v0

    .line 311
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getMacFilterMode()I
    .registers 6

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "macFilterModeP":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_b

    .line 321
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v1

    .line 324
    :cond_b
    const-string v2, "WifiSoftAP"

    const-string v3, "getMacFilterMode ()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v1, :cond_9c

    .line 327
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->getFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    .line 328
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    const-string v2, "WifiSoftAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacFilterMode ():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapMacFilterMode()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a4

    .line 352
    const-string v2, "WifiSoftAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacFilterMode not supported ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :goto_53
    const-string v2, "WifiSoftAP"

    const-string v3, "getMacFilterMode (): return -1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v2, -0x1

    :goto_5b
    return v2

    .line 335
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_5c
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->getMacFilterCount()I

    move-result v2

    if-nez v2, :cond_64

    .line 336
    const/4 v2, 0x0

    goto :goto_5b

    .line 341
    :cond_64
    const-string v2, "WifiSoftAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacFilterMode : ACCEPT_UNLESS_IN_DENY_LIST ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x2

    goto :goto_5b

    .line 348
    :pswitch_80
    const-string v2, "WifiSoftAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacFilterMode : DENY_LIST ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v2, 0x1

    goto :goto_5b

    .line 356
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :cond_9c
    const-string v2, "WifiSoftAP"

    const-string v3, "getMacFilterMode macFilterModeP is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 329
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_80
    .end packed-switch
.end method

.method public getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    .registers 4
    .param p1, "isEnabled"    # I
    .param p2, "isNDEF"    # I

    .prologue
    .line 129
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getWpsNfcConfTokenFromAP(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getWpsNfcHandoverSelect(I)Ljava/lang/String;
    .registers 3
    .param p1, "isNDEF"    # I

    .prologue
    .line 139
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getWpsNfcHandoverSelect(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public macFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_f

    .line 413
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 414
    const/4 v0, 0x0

    .line 417
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public macFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_f

    .line 426
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->MacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 427
    const/4 v0, 0x0

    .line 430
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public removeAlltheList()I
    .registers 2

    .prologue
    .line 202
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->removeAlltheList()I

    move-result v0

    goto :goto_7
.end method

.method public removeMacFilterAllowList()I
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->removeMacFilterAllowList()I

    move-result v0

    goto :goto_7
.end method

.method public setMacFilterByIndex(ILjava/lang/String;)Z
    .registers 4
    .param p1, "iIndex"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 227
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    const/4 v0, 0x1

    .line 231
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setMacFilterCount(I)Z
    .registers 3
    .param p1, "iCount"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterCount(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setMacFilterMode(I)Z
    .registers 7
    .param p1, "iMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    packed-switch p1, :pswitch_data_3e

    .line 282
    const-string v2, "WifiSoftAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMacFilterMode unknown param ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1e
    :goto_1e
    return v1

    .line 257
    :pswitch_1f
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 286
    .local v0, "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :goto_21
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v2, :cond_1e

    .line 287
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    invoke-direct {v3, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V

    invoke-virtual {v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 288
    const/4 v1, 0x1

    goto :goto_1e

    .line 267
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_34
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 268
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    goto :goto_21

    .line 273
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_37
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 274
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    goto :goto_21

    .line 278
    .end local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    :pswitch_3a
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 279
    .restart local v0    # "macFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    goto :goto_21

    .line 252
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method public setMacaddracl(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 161
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMacaddracl(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setMaxAssoc(I)I
    .registers 3
    .param p1, "max_assoc_num"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    if-eqz v0, :cond_e

    .line 464
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->mWifiSapManager:Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setMaxNumOfClients(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    .registers 6
    .param p1, "bEnable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "channel"    # I
    .param p4, "maxScb"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z

    move-result v0

    goto :goto_7
.end method

.method public setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;II)Z
    .registers 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "channel"    # I
    .param p3, "maxScb"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z

    move-result v0

    goto :goto_7
.end method

.method public setTxPower(I)I
    .registers 3
    .param p1, "txPower"    # I

    .prologue
    .line 79
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setTxPower(I)I

    move-result v0

    goto :goto_7
.end method

.method public setWpsCancel()I
    .registers 2

    .prologue
    .line 99
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setWpsCancel()I

    move-result v0

    goto :goto_7
.end method

.method public setWpsNfcPwToken(Ljava/lang/String;II)I
    .registers 5
    .param p1, "NDEF"    # Ljava/lang/String;
    .param p2, "isEnabled"    # I
    .param p3, "isNDEF"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setWpsNfcPwToken(Ljava/lang/String;II)I

    move-result v0

    goto :goto_7
.end method

.method public setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "reqNDEF"    # Ljava/lang/String;
    .param p2, "selNDEF"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public setWpsPbc()I
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setWpsPbc()I

    move-result v0

    goto :goto_7
.end method

.method public setWpsPin(Ljava/lang/String;I)I
    .registers 4
    .param p1, "PinNum"    # Ljava/lang/String;
    .param p2, "expirationTime"    # I

    .prologue
    .line 89
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->getInstance()Lcom/lge/wifi/impl/wifiSap/WifiSapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapManager;->setWpsPin(Ljava/lang/String;I)I

    move-result v0

    goto :goto_7
.end method

.method public syncMacFilter([Ljava/lang/String;I)Z
    .registers 12
    .param p1, "macList"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 367
    array-length v0, p1

    .line 369
    .local v0, "filterCnt":I
    const/4 v4, 0x0

    .line 371
    .local v4, "ret":Z
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->setMacFilterCount(I)Z

    move-result v4

    .line 372
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setMacFilterCount Result : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Mac Filtered Device Count : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v4, :cond_33

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-lt v1, v0, :cond_6a

    .line 387
    .end local v1    # "i":I
    :cond_33
    if-eqz v4, :cond_4d

    .line 389
    invoke-virtual {p0, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->setMacFilterMode(I)Z

    move-result v4

    .line 390
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setMacFilterMode Result : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_4d
    const/4 v5, 0x0

    .line 394
    .local v5, "temp":I
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->getMacFilterCount()I

    move-result v5

    .line 395
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MAC count : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_67
    if-lt v2, v5, :cond_9d

    .line 403
    return v4

    .line 381
    .end local v2    # "j":I
    .end local v5    # "temp":I
    .restart local v1    # "i":I
    :cond_6a
    aget-object v6, p1, v1

    invoke-virtual {p0, v1, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v4

    .line 382
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setMacFilterByIndex Result : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 383
    const-string v8, " : Index ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mac addr ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 399
    .end local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v5    # "temp":I
    :cond_9d
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "macAddr":Ljava/lang/String;
    const-string v6, "WifiSoftAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MAC List : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_67
.end method
