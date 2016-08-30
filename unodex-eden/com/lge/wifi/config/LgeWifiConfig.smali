.class public Lcom/lge/wifi/config/LgeWifiConfig;
.super Ljava/lang/Object;
.source "LgeWifiConfig.java"


# static fields
.field public static final CONFIG_CNE_WQE_ENABLED:Z

.field public static final CONFIG_LGE_WLAN_BRCM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_DCF:Z

.field public static final CONFIG_LGE_WLAN_MTK_PATCH:Z

.field public static final CONFIG_LGE_WLAN_PATCH:Z

.field public static final CONFIG_LGE_WLAN_QCOM_PATCH:Z

.field public static final CONFIG_LGE_WLAN_TEST:Z

.field public static final CONFIG_LGE_WLAN_TEST_PROFILE:Z

.field public static final HOTSPOT_2_4G_MODE_LOW:I = 0x0

.field public static final HOTSPOT_5G_MODE_LOW:I = 0x1

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_2_4G_VALUE_LOW_QCT:I = 0x8

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_BRCM:I = 0x4b0

.field private static final HOTSPOT_TX_POWER_5G_VALUE_LOW_QCT:I = 0x8

.field public static final HOTSPOT_TX_POWER_MODE_HIGH:I = 0x1

.field public static final HOTSPOT_TX_POWER_MODE_LOW:I = 0x0

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_BRCM:I = 0xbb8

.field private static final HOTSPOT_TX_POWER_VALUE_HIGH_QCT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "LgeWifiConfig"

.field public static final WPSINFO_TYPE_NFC_CONFIG:I = 0xc

.field public static final WPSINFO_TYPE_NFC_HANDOVER:I = 0xd

.field public static final WPSINFO_TYPE_NFC_PWD:I = 0xb

.field private static final mCommonHotspot:Ljava/lang/String;

.field private static mIsAvailableKtUsim:Z = false

.field public static mIsOtaDisabled:Z = false

.field private static final mLgeEap:Z = true

.field private static final mMobileHotspot:Z

.field private static final mModelName:Ljava/lang/String;

.field private static final mTargetCountry:Ljava/lang/String;

.field private static final mTargetOperator:Ljava/lang/String;

.field private static final mTargetRegion:Ljava/lang/String;

.field private static final mUseFccCountry:Z

.field private static final mWifiOffdelayAfter15alarm:Z

.field private static final mWlanChipVersion:Ljava/lang/String;

.field private static sEnableAutoJoin:Z

.field public static swifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-string v0, "wifi.lge.patch"

    .line 28
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    .line 37
    const-string v0, "wlan.chip.vendor"

    const-string v3, "brcm"

    .line 36
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v3, "qcom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_QCOM_PATCH:Z

    .line 44
    const-string v0, "wlan.chip.vendor"

    const-string v3, "qcom"

    .line 43
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v3, "brcm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    .line 51
    const-string v0, "wlan.chip.vendor"

    const-string v3, "qcom"

    .line 50
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v3, "mtk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_MTK_PATCH:Z

    .line 57
    const-string v0, "wifi.lge.test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST:Z

    .line 60
    const-string v0, "wifi.lge.test_profile"

    .line 59
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_TEST_PROFILE:Z

    .line 65
    const-string v0, "wlan.lge.dcf.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    .line 70
    const-string v0, "persist.cne.feature"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10c

    move v0, v1

    :goto_5c
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_CNE_WQE_ENABLED:Z

    .line 76
    const-string v0, "wlan.chip.version"

    const-string v3, "bcm4330"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    .line 83
    const-string v0, "ro.build.target_operator"

    .line 84
    const-string v3, "OPEN"

    .line 83
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    .line 85
    const-string v0, "ro.build.target_country"

    .line 86
    const-string v3, "COM"

    .line 85
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    .line 87
    const-string v0, "ro.build.target_region"

    .line 88
    const-string v3, "NA"

    .line 87
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    .line 89
    const-string v0, "ro.product.model"

    .line 90
    const-string v3, "UNKNOWN"

    .line 89
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mModelName:Ljava/lang/String;

    .line 91
    const-string v0, "wifi.lge.common_hotspot"

    .line 92
    const-string v3, "false"

    .line 91
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    .line 100
    const-string v0, "wifi.lge.offdelay"

    .line 99
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    .line 114
    const-string v0, "wifi.lge.mhp"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    .line 117
    const-string v0, "EU"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "SCA"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetRegion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "US"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 118
    const-string v0, "CA"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "JP"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "AU"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 119
    const-string v0, "IL"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "ZA"

    sget-object v3, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    move v0, v2

    .line 117
    :goto_fb
    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCountry:Z

    .line 120
    sput-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->mIsOtaDisabled:Z

    .line 124
    const-string v0, "ro.radio.noril"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->swifiOnly:Z

    .line 136
    sput-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    .line 142
    sput-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    .line 169
    return-void

    :cond_10c
    move v0, v2

    .line 70
    goto/16 :goto_5c

    :cond_10f
    move v0, v1

    .line 117
    goto :goto_fb
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableDCFRunTimeChange()Z
    .registers 2

    .prologue
    .line 599
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_DCF:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static checkLgeKtCmProfileAccess()Z
    .registers 1

    .prologue
    .line 500
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    if-eqz v0, :cond_6

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static checkMccMnc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {p0}, Lcom/lge/wifi/config/LgeWifiConfig;->getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "myMccMnc":[Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 236
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 241
    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18
.end method

.method public static doesSupportHotspotList()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 393
    const-string v1, "TMO"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "MPCS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 394
    :cond_25
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 402
    :cond_2f
    :goto_2f
    return v0

    .line 396
    :cond_30
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 398
    const-string v1, "VZW"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 399
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 402
    :cond_4e
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static getAllAssocMacListSize()I
    .registers 3

    .prologue
    .line 625
    const-string v1, "wifi.lge.assoclistsize"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 626
    .local v0, "value":I
    return v0
.end method

.method public static getAutoJoinStatus()Z
    .registers 1

    .prologue
    .line 582
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    if-eqz v0, :cond_6

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getCountry()Ljava/lang/String;
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    return-object v0
.end method

.method private static getMccMncInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 314
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 316
    .local v1, "simMccMnc":[Ljava/lang/String;
    if-nez p0, :cond_8

    move-object v1, v3

    .line 341
    .end local v1    # "simMccMnc":[Ljava/lang/String;
    :goto_7
    return-object v1

    .line 322
    .restart local v1    # "simMccMnc":[Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    :try_start_9
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 323
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 322
    aput-object v2, v1, v4

    .line 326
    const/4 v4, 0x1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 327
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    aput-object v2, v1, v4

    .line 329
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMccMncInfo: MCC ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] MNC ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_5b} :catch_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_8b

    goto :goto_7

    .line 330
    :catch_5c
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMccMncInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 332
    goto :goto_7

    .line 333
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_73
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMccMncInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 335
    goto/16 :goto_7

    .line 336
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_8b
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LgeWifiConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMccMncInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 338
    goto/16 :goto_7
.end method

.method public static getOperator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 180
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getTxPowerValue(II)I
    .registers 6
    .param p0, "txPowerMode"    # I
    .param p1, "defaultChannel"    # I

    .prologue
    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "txPowerValue":I
    const-string v1, "LgeWifiConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTxPowerValue : txPowerMode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-boolean v1, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_BRCM_PATCH:Z

    if-eqz v1, :cond_26

    .line 531
    if-nez p0, :cond_23

    .line 532
    if-nez p1, :cond_20

    .line 533
    const/16 v0, 0x4b0

    .line 553
    :goto_1f
    return v0

    .line 535
    :cond_20
    const/16 v0, 0x4b0

    .line 537
    goto :goto_1f

    .line 539
    :cond_23
    const/16 v0, 0xbb8

    .line 541
    goto :goto_1f

    .line 542
    :cond_26
    if-nez p0, :cond_30

    .line 543
    if-nez p1, :cond_2d

    .line 544
    const/16 v0, 0x8

    .line 545
    goto :goto_1f

    .line 546
    :cond_2d
    const/16 v0, 0x8

    .line 548
    goto :goto_1f

    .line 550
    :cond_30
    const/16 v0, 0x14

    goto :goto_1f
.end method

.method public static getWlanChipsetVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 594
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static isInBandRoamingProfile()Z
    .registers 2

    .prologue
    .line 617
    const-string v0, "bcm4339"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "bcm43455"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mWlanChipVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 618
    :cond_14
    const/4 v0, 0x1

    .line 620
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isWifiACGFeaturedCarrier()Z
    .registers 2

    .prologue
    .line 436
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 437
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 438
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 439
    :cond_22
    const/4 v0, 0x1

    .line 441
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static isWifiChameleonFeaturedCarrier()Z
    .registers 2

    .prologue
    .line 426
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 427
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 428
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 429
    :cond_22
    const/4 v0, 0x1

    .line 431
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static setAutoJoinStatus(Z)V
    .registers 2
    .param p0, "value"    # Z

    .prologue
    .line 574
    if-eqz p0, :cond_6

    .line 575
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    .line 579
    :goto_5
    return-void

    .line 577
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->sEnableAutoJoin:Z

    goto :goto_5
.end method

.method public static setDefaultMobileHotspotUS()Z
    .registers 2

    .prologue
    .line 513
    const-string v0, "MPCS"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "USC"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    const-string v0, "US"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 514
    :cond_1e
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->isWifiChameleonFeaturedCarrier()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 515
    :cond_24
    const/4 v0, 0x1

    .line 517
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static setLgeKtUsimRemoved()Z
    .registers 2

    .prologue
    .line 494
    const-string v0, "LgeWifiConfig"

    const-string v1, "setLgeKtUsimRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsAvailableKtUsim:Z

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public static setWiFiAutoChannel(Ljava/lang/String;)V
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string v0, "wifi.lge.autochannel"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public static supportStaticIPv6()Z
    .registers 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public static useChangeSsid()Z
    .registers 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public static useCommonHotspotAPI()Z
    .registers 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "ret":Z
    const-string v1, "true"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mCommonHotspot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 412
    const/4 v0, 0x1

    .line 417
    :goto_c
    return v0

    .line 415
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static useDefaultWifiOn()Z
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 249
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 250
    :cond_18
    const/4 v0, 0x1

    .line 253
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static useDefaultWifiSleepPolicy()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 260
    const-string v2, "wifi.lge.sleeppolicy"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "wifiSleepPolicy":I
    packed-switch v0, :pswitch_data_26

    .line 268
    const-string v2, "LgeWifiConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown wifiSleepPolicy : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 271
    .end local v0    # "wifiSleepPolicy":I
    :pswitch_25
    return v0

    .line 262
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static useEAPAKAWiFiAggregation()Z
    .registers 2

    .prologue
    .line 469
    const-string v0, "wifi.lge.eapaka.aggregation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useFccCerti()Z
    .registers 1

    .prologue
    .line 608
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mUseFccCountry:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mIsOtaDisabled:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->swifiOnly:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static useHotspotHidden()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 446
    const-string v1, "US"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "ATT"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 456
    :cond_15
    :goto_15
    return v0

    .line 450
    :cond_16
    const-string v1, "CA"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 451
    const-string v1, "TLS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "BELL"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 452
    const-string v1, "RGS"

    sget-object v2, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 456
    :cond_3e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static useKoreanSsid()Z
    .registers 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static useKoreanSsid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "SSID"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public static useLgeEap()Z
    .registers 1

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public static useLgeKtCm()Z
    .registers 2

    .prologue
    .line 224
    sget-object v0, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static useMobileHotspot()Z
    .registers 3

    .prologue
    .line 371
    const-string v0, "LgeWifiConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "useMobileHotspot"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mMobileHotspot:Z

    return v0
.end method

.method public static useOpProfile()Z
    .registers 1

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public static usePrioritySelectionPolicy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 204
    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "COM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "EU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    const-string v2, "UK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 211
    :cond_29
    :goto_29
    return v0

    .line 207
    :cond_2a
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 211
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static useStatefullDHCPV6()Z
    .registers 2

    .prologue
    .line 559
    const-string v0, "CN"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "KT"

    sget-object v1, Lcom/lge/wifi/config/LgeWifiConfig;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 560
    :cond_14
    const/4 v0, 0x1

    .line 562
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static useWiFiAggregation()Z
    .registers 2

    .prologue
    .line 464
    const-string v0, "wifi.lge.aggregation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWiFiAutoChannel()I
    .registers 3

    .prologue
    .line 475
    const-string v1, "wifi.lge.autochannel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "value":I
    return v0
.end method

.method public static useWiFiOffloading()Z
    .registers 2

    .prologue
    .line 361
    const-string v0, "wifi.lge.offloading"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiActivationWhileCharging()Z
    .registers 2

    .prologue
    .line 279
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 280
    const/4 v0, 0x1

    .line 283
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static useWifiDLNA()Z
    .registers 2

    .prologue
    .line 380
    const-string v0, "dhcp.dlna.using"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useWifiOffDelayAfter15alarm()Z
    .registers 1

    .prologue
    .line 349
    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/lge/wifi/config/LgeWifiConfig;->mWifiOffdelayAfter15alarm:Z

    if-eqz v0, :cond_a

    .line 350
    const/4 v0, 0x1

    .line 352
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
