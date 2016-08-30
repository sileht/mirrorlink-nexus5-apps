.class public Lcom/lge/bluetooth/LGBluetoothFeatureConfig;
.super Ljava/lang/Object;
.source "LGBluetoothFeatureConfig.java"


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final DEBUG:Z = false

.field private static final PROPERTY_BTUI_PRIVACY_LOG:Ljava/lang/String; = "persist.service.bdroid.privlog"

.field private static final TAG:Ljava/lang/String; = "LGBluetoothFeatureConfig"

.field private static btFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static isFeatureLoaded:Z

.field private static mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

.field private static mTargetCountry:Ljava/lang/String;

.field private static mTargetOp:Ljava/lang/String;

.field public static sBtSpecFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCharacteristics:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    .line 65
    const-string v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    .line 67
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sCharacteristics:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 79
    sput-boolean v2, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SPR"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "TMO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MPCS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "USC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePrivacyLogsInUserBuild()V
    .registers 6

    .prologue
    .line 336
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isTargetBuildTypeUSER()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    sget-object v3, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mOperatorsDisablingPrivacyLogs:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    .local v0, "operator":Ljava/lang/String;
    :goto_a
    if-lt v2, v4, :cond_d

    .line 357
    :cond_c
    :goto_c
    return-void

    .line 337
    :cond_d
    aget-object v0, v3, v2

    .line 338
    sget-object v5, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 339
    const-string v2, "persist.service.bdroid.privlog"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "result":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 342
    const-string v2, "LGBluetoothFeatureConfig"

    const-string v3, "already set to 1 via hidden menu. so, enable logs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 346
    :cond_2f
    const-string v2, "LGBluetoothFeatureConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disablePrivacyLogsInUserBuild(), result is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and property is set to 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v2, "persist.service.bdroid.privlog"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 337
    .end local v1    # "result":Ljava/lang/String;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static get(Ljava/lang/String;)Z
    .registers 4
    .param p0, "svcName"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-boolean v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    if-nez v0, :cond_20

    .line 318
    const-string v0, "LGBluetoothFeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " get() - isFeatureLoaded : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->loadXml()V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 327
    :cond_20
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_29
    return v0

    :cond_2a
    new-instance v1, Ljava/lang/Boolean;

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_29
.end method

.method public static getBluetoothSpecInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "specFeature"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "specResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isBRCMSolution()Z
    .registers 2

    .prologue
    .line 246
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "brcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChameleonFeaturedCarrier()Z
    .registers 2

    .prologue
    .line 370
    const-string v0, "US"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 371
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 372
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 374
    :cond_1e
    const/4 v0, 0x1

    .line 376
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static isMTKSolution()Z
    .registers 2

    .prologue
    .line 266
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrivacyLogsEnabled()Z
    .registers 4

    .prologue
    .line 282
    const-string v1, "persist.service.bdroid.privlog"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 283
    .local v0, "isPrivacyLogsEnabled":Z
    const-string v1, "LGBluetoothFeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPrivacyLogsEnabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0
.end method

.method public static isQCTSolution()Z
    .registers 2

    .prologue
    .line 256
    const-string v0, "bluetooth.chip.vendor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "svcName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSigFeature()Z
    .registers 2

    .prologue
    .line 276
    const-string v0, "persist.service.bdroid.sig"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportBackgroundBle()Z
    .registers 2

    .prologue
    .line 563
    const/4 v0, 0x1

    .line 567
    .local v0, "support":Z
    const-string v1, "BT_SUPPORT_BACKGROUND_BLE"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 568
    const/4 v0, 0x0

    .line 570
    :cond_a
    return v0
.end method

.method public static isSupportFtp()Z
    .registers 2

    .prologue
    .line 484
    const/4 v0, 0x1

    .line 488
    .local v0, "support":Z
    const-string v1, "BT_SUPPORT_FTP"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 489
    const/4 v0, 0x0

    .line 491
    :cond_a
    return v0
.end method

.method public static isSupportMap()Z
    .registers 2

    .prologue
    .line 467
    const/4 v0, 0x1

    .line 471
    .local v0, "support":Z
    const-string v1, "BT_SUPPORT_MAP"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 472
    const/4 v0, 0x0

    .line 474
    :cond_a
    return v0
.end method

.method public static isSupportPan()Z
    .registers 7

    .prologue
    .line 391
    const/4 v2, 0x1

    .line 392
    .local v2, "ret_value":Z
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSupportPan() :  mTargetOp="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isChameleonFeaturedCarrier()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 395
    new-instance v0, Ljava/lang/String;

    const-string v4, "/carrier/data/td"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "cmln_data_tether":Ljava/lang/String;
    const/4 v1, 0x1

    .line 399
    .local v1, "ref_value":I
    invoke-static {v0, v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->readChameleonIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 401
    .local v3, "tetherMode":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_55

    .line 402
    const/4 v2, 0x0

    .line 406
    :goto_2d
    const-string v4, "LGBluetoothFeatureConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSupportPan() :  tetherMode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "cmln_data_tether":Ljava/lang/String;
    .end local v1    # "ref_value":I
    .end local v3    # "tetherMode":I
    :cond_4b
    :goto_4b
    if-eqz v2, :cond_7e

    .line 418
    const-string v4, "bluetooth.pan"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_54
    return v2

    .line 404
    .restart local v0    # "cmln_data_tether":Ljava/lang/String;
    .restart local v1    # "ref_value":I
    .restart local v3    # "tetherMode":I
    :cond_55
    const/4 v2, 0x1

    goto :goto_2d

    .line 407
    .end local v0    # "cmln_data_tether":Ljava/lang/String;
    .end local v1    # "ref_value":I
    .end local v3    # "tetherMode":I
    :cond_57
    const-string v4, "BT_COMMON_FUNCTION_PAN_ENABLE"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 408
    const/4 v2, 0x0

    .line 410
    const-string v4, "TMO"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 411
    const-string v4, "COM"

    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 412
    const/4 v2, 0x1

    goto :goto_4b

    .line 420
    :cond_7e
    const-string v4, "bluetooth.pan"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method

.method public static isSupportResetPairedDevice()Z
    .registers 2

    .prologue
    .line 554
    const-string v0, "VZW"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "ATT"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 555
    :cond_14
    const/4 v0, 0x1

    .line 557
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSupportSap()Z
    .registers 3

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 437
    .local v0, "support":Z
    const-string v1, "persist.service.bdroid.sap"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 438
    const/4 v0, 0x1

    .line 440
    :cond_10
    return v0
.end method

.method public static isSupportSettingSearchUpdate()Z
    .registers 2

    .prologue
    .line 546
    const-string v0, "VZW"

    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isSupportSplitView()Z
    .registers 3

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 447
    .local v0, "support":Z
    sget-object v1, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sCharacteristics:Ljava/lang/String;

    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 448
    const/4 v0, 0x1

    .line 450
    :cond_c
    return v0
.end method

.method public static isTabletDevice()Z
    .registers 1

    .prologue
    .line 456
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isSupportSplitView()Z

    move-result v0

    return v0
.end method

.method public static isTargetBuildTypeUSER()Z
    .registers 2

    .prologue
    .line 289
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static listPrintDebug()V
    .registers 0

    .prologue
    .line 207
    return-void
.end method

.method public static loadXml()V
    .registers 20

    .prologue
    .line 97
    const/16 v17, 0x1

    sput-boolean v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isFeatureLoaded:Z

    .line 98
    const/4 v8, 0x0

    .line 101
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v16, Ljava/io/File;

    const-string v17, "etc/bluetooth/feature_config.xml"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v16, "xmlFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_173
    .catchall {:try_start_5 .. :try_end_13} :catchall_170

    .line 104
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    if-nez v9, :cond_2c

    .line 105
    :try_start_15
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "fis == null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_95

    .line 183
    :catch_1d
    move-exception v17

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "xmlFile":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_1f
    :try_start_1f
    const-string v17, "LGBluetoothFeatureConfig"

    const-string v18, "IOException is occured when reading feature_config.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_170

    .line 185
    if-eqz v8, :cond_2b

    .line 187
    :try_start_28
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_15d

    .line 194
    :cond_2b
    :goto_2b
    return-void

    .line 108
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :cond_2c
    :try_start_2c
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v17, :cond_44

    .line 109
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_1d
    .catchall {:try_start_2c .. :try_end_33} :catchall_95

    move-result-object v7

    .line 112
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_34
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    sput-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_3a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_34 .. :try_end_3a} :catch_8c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_1d
    .catchall {:try_start_34 .. :try_end_3a} :catchall_95

    .line 117
    :try_start_3a
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v18, Lcom/lge/bluetooth/LGBluetoothFeatureConfig$1;

    invoke-direct/range {v18 .. v18}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig$1;-><init>()V

    invoke-virtual/range {v17 .. v18}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_44} :catch_1d
    .catchall {:try_start_3a .. :try_end_44} :catchall_95

    .line 133
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_44
    const/4 v5, 0x0

    .line 136
    .local v5, "doc":Lorg/w3c/dom/Document;
    :try_start_45
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->builder:Ljavax/xml/parsers/DocumentBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_4c
    .catch Lorg/xml/sax/SAXException; {:try_start_45 .. :try_end_4c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_a2
    .catchall {:try_start_45 .. :try_end_4c} :catchall_95

    move-result-object v5

    .line 141
    :goto_4d
    const/16 v17, 0x4

    :try_start_4f
    move/from16 v0, v17

    new-array v14, v0, [Lorg/w3c/dom/NodeList;

    const/16 v17, 0x0

    .line 142
    const-string v18, "COMMON"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x1

    .line 143
    sget-object v18, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->mTargetOp:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x2

    .line 144
    const-string v18, "SERVICE"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x3

    .line 145
    const-string v18, "DEBUG"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    aput-object v18, v14, v17
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_83} :catch_a2
    .catchall {:try_start_4f .. :try_end_83} :catchall_95

    .line 148
    .local v14, "nodeList":[Lorg/w3c/dom/NodeList;
    if-nez v14, :cond_b7

    .line 185
    if-eqz v9, :cond_8a

    .line 187
    :try_start_87
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_b2

    :cond_8a
    :goto_8a
    move-object v8, v9

    .line 149
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_2b

    .line 113
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    .restart local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_8c
    move-exception v6

    .line 114
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8d
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_1d
    .catchall {:try_start_8d .. :try_end_95} :catchall_95

    .line 184
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_95
    move-exception v17

    move-object v8, v9

    .line 185
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "xmlFile":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_97
    if-eqz v8, :cond_9c

    .line 187
    :try_start_99
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_163

    .line 192
    :cond_9c
    :goto_9c
    throw v17

    .line 137
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :catch_9d
    move-exception v6

    .line 138
    .local v6, "e":Lorg/xml/sax/SAXException;
    :try_start_9e
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2
    .catchall {:try_start_9e .. :try_end_a1} :catchall_95

    goto :goto_4d

    .line 174
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_a2
    move-exception v17

    :try_start_a3
    const-string v17, "LGBluetoothFeatureConfig"

    const-string v18, "IOException is occured when reading feature_config.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_aa} :catch_1d
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_95

    .line 185
    :cond_aa
    if-eqz v9, :cond_16d

    .line 187
    :try_start_ac
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_169

    move-object v8, v9

    .line 188
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2b

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    :catch_b2
    move-exception v6

    .line 189
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b7
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b8
    :try_start_b8
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_aa

    .line 153
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_c0
    aget-object v17, v14, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v11, v0, :cond_cd

    .line 152
    add-int/lit8 v10, v10, 0x1

    goto :goto_b8

    .line 154
    :cond_cd
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 155
    .local v4, "attributeMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 157
    .local v3, "attributeLength":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_de
    if-lt v12, v3, :cond_e3

    .line 153
    add-int/lit8 v11, v11, 0x1

    goto :goto_c0

    .line 158
    :cond_e3
    invoke-interface {v4, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 159
    .local v2, "attNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "value":Ljava/lang/String;
    const-string v17, "BT_BLUETOOTH_VERSION"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_117

    const-string v17, "BT_BLUETOOTH_STACK"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_117

    const-string v17, "BT_BLUETOOTH_CHIPSET"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_117

    const-string v17, "BT_BLUETOOTH_PROFILE"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14c

    .line 163
    :cond_117
    const-string v17, "LGBluetoothFeatureConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "BLUETOOTH KEY : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " value : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->sBtSpecFeature:Ljava/util/Hashtable;

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_149
    add-int/lit8 v12, v12, 0x1

    goto :goto_de

    .line 166
    :cond_14c
    sget-object v17, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v18, Ljava/lang/Boolean;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_15c} :catch_a2
    .catchall {:try_start_b8 .. :try_end_15c} :catchall_95

    goto :goto_149

    .line 188
    .end local v2    # "attNode":Lorg/w3c/dom/Node;
    .end local v3    # "attributeLength":I
    .end local v4    # "attributeMap":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "nodeList":[Lorg/w3c/dom/NodeList;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "xmlFile":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_15d
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2b

    .line 188
    .end local v6    # "e":Ljava/io/IOException;
    :catch_163
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9c

    .line 188
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "xmlFile":Ljava/io/File;
    :catch_169
    move-exception v6

    .line 189
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    :cond_16d
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2b

    .line 184
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "xmlFile":Ljava/io/File;
    :catchall_170
    move-exception v17

    goto/16 :goto_97

    .line 183
    :catch_173
    move-exception v17

    goto/16 :goto_1f
.end method

.method private static readChameleonIntValue(Ljava/lang/String;I)I
    .registers 13
    .param p0, "fn"    # Ljava/lang/String;
    .param p1, "ref_value"    # I

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 499
    .local v8, "value":Ljava/lang/String;
    move v5, p1

    .line 501
    .local v5, "ret_value":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, "fh":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_17

    .line 503
    const-string v9, "LGBluetoothFeatureConfig"

    const-string v10, "readChameleonIntValue() : tethered data does not exit."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 540
    .end local v5    # "ret_value":I
    .local v6, "ret_value":I
    :goto_16
    return v6

    .line 508
    .end local v6    # "ret_value":I
    .restart local v5    # "ret_value":I
    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_44
    .catchall {:try_start_17 .. :try_end_1c} :catchall_4d

    .line 509
    .end local v1    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_1c
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 510
    .local v3, "inFile":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_36

    .line 512
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 513
    .local v7, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_61
    .catchall {:try_start_1c .. :try_end_35} :catchall_5e

    move-result-object v8

    .line 520
    .end local v7    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_36
    if-eqz v2, :cond_55

    .line 521
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_54

    move-object v1, v2

    .line 530
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :cond_3c
    :goto_3c
    if-eqz v8, :cond_57

    .line 531
    :try_start_3e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_59

    move-result v5

    :goto_42
    move v6, v5

    .line 540
    .end local v5    # "ret_value":I
    .restart local v6    # "ret_value":I
    goto :goto_16

    .end local v6    # "ret_value":I
    .restart local v5    # "ret_value":I
    :catch_44
    move-exception v9

    .line 520
    :goto_45
    if-eqz v1, :cond_3c

    .line 521
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_3c

    .line 524
    :catch_4b
    move-exception v9

    goto :goto_3c

    .line 518
    :catchall_4d
    move-exception v9

    .line 520
    :goto_4e
    if-eqz v1, :cond_53

    .line 521
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_5c

    .line 526
    :cond_53
    :goto_53
    throw v9

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "inFile":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_54
    move-exception v9

    :cond_55
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_3c

    .line 533
    .end local v3    # "inFile":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_57
    move v5, p1

    goto :goto_42

    .line 537
    :catch_59
    move-exception v9

    move v5, p1

    goto :goto_42

    :catch_5c
    move-exception v10

    goto :goto_53

    .line 518
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_5e
    move-exception v9

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_4e

    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_61
    move-exception v9

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_45
.end method

.method public static set(Ljava/lang/String;Z)V
    .registers 4
    .param p0, "svcName"    # Ljava/lang/String;
    .param p1, "bYn"    # Z

    .prologue
    .line 302
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 303
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_d
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method
