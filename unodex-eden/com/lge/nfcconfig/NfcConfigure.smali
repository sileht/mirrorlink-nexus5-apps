.class public Lcom/lge/nfcconfig/NfcConfigure;
.super Ljava/lang/Object;
.source "NfcConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;,
        Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;,
        Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;,
        Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$HceScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;,
        Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;,
        Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;,
        Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;,
        Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static INSTANCE:Lcom/lge/nfcconfig/NfcConfigure; = null

.field private static final NFC_CONFIG_BLANK:Ljava/lang/String; = ""

.field private static final NFC_CONFIG_FALSE:Ljava/lang/String; = "false"

.field private static final NFC_CONFIG_TRUE:Ljava/lang/String; = "true"

.field public static final NFC_HANDOVER_AUTOAPPLAUNCH:Ljava/lang/String; = "HandoverAutoAppLaunch"

.field public static final NFC_HANDOVER_TYPE:Ljava/lang/String; = "HandoverSupportType"

.field public static final NFC_POPUPDIALOG_TYPE:Ljava/lang/String; = "PopupDialogType"

.field public static final NFC_SECUREELEMENT_TYPE:Ljava/lang/String; = "SecureElementType"

.field public static final NFC_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final TAG:Ljava/lang/String; = "NfcConfigure"


# instance fields
.field public mAccessControlEnable:Z

.field public mAdvancedHCEEnable:Z

.field public mAidFilterEnable:Z

.field private mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

.field private mContext:Landroid/content/Context;

.field public mCoverScenarioEnable:Z

.field public mDefaultOnOffType:Ljava/lang/String;

.field public mEmptyPopupSupport:Z

.field public mHandoverAutoAppLaunch:Z

.field public mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

.field public mHostCardEmulationScenario:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;"
        }
    .end annotation
.end field

.field public mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

.field public mLGSharingEnable:Z

.field public mLockScreenPollingEnable:Z

.field public mMTKBluetoothEnable:Z

.field public mMccMncSupport:Z

.field public mNotifyonlyValidTag:Z

.field public mPermittedSeBroadcastEnable:Z

.field public mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

.field public mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

.field public mRemoveIconWhenLockScreen:Z

.field public mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

.field public mSePatchEnabled:Z

.field public mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field public mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

.field public mTagLongTimePopupSupport:Z

.field public mTargetCountry:Ljava/lang/String;

.field public mTargetDevice:Ljava/lang/String;

.field private mTargetFlag:Ljava/lang/String;

.field public mTargetOperator:Ljava/lang/String;

.field public mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

.field public mUseGpacResultValidTime:Z

.field public mVendorStablePatch:Z

.field public mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

.field public mWCScenarioEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/nfcconfig/NfcConfigure;->DBG:Z

    .line 406
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 411
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 412
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 413
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 414
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 415
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 416
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 417
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    .line 418
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 419
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 420
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    .line 421
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    .line 422
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    .line 423
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    .line 424
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    .line 425
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    .line 426
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    .line 427
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    .line 428
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    .line 429
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    .line 430
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    .line 431
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    .line 432
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    .line 433
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    .line 434
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    .line 435
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    .line 436
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 437
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    .line 438
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mUseGpacResultValidTime:Z

    .line 443
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    .line 444
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    .line 445
    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    .line 447
    const-string v5, ""

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    .line 448
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    .line 468
    iput-object p1, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    .line 469
    sput-object p0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 473
    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 474
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.nfc"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 476
    .local v1, "mIsNfcCapable":Z
    sget-object v5, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 477
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->values()[Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_94
    if-lt v5, v7, :cond_a6

    .line 489
    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    if-nez v5, :cond_bf

    .line 490
    :cond_9e
    const-string v4, "NfcConfigure"

    const-string v5, "Invalid Target Operator and Country"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_a5
    :goto_a5
    return-void

    .line 477
    :cond_a6
    aget-object v0, v6, v5

    .line 478
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    const-string v8, "lge.nfc.vendor"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "vendorType":Ljava/lang/String;
    if-eqz v3, :cond_bc

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 480
    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 477
    :cond_bc
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 497
    .end local v0    # "list":Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;
    .end local v3    # "vendorType":Ljava/lang/String;
    :cond_bf
    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_using_lollipop_cover:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_132

    .line 498
    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_using_window_cover:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_132

    .line 499
    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_132

    .line 497
    :goto_e9
    iput-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mCoverScenarioEnable:Z

    .line 504
    const-string v4, "NfcConfigure"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NFC support or Not, mIsNfcCapable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v1, :cond_a5

    .line 507
    new-instance v4, Lcom/lge/nfcconfig/NfcConfigParser;

    iget-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/lge/nfcconfig/NfcConfigParser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    .line 509
    iget-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    if-eqz v4, :cond_a5

    .line 511
    iget-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigParser;->parseConfigFile()Z

    .line 513
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setDefaultConfig()V

    .line 514
    invoke-virtual {p0}, Lcom/lge/nfcconfig/NfcConfigure;->printDefaultConfig()V

    .line 516
    iget-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigParser;->clearConfigList()V

    .line 517
    iget-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigParser;->clearTargetList()V

    .line 518
    iget-boolean v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-nez v4, :cond_a5

    .line 519
    iget-object v4, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-virtual {v4}, Lcom/lge/nfcconfig/NfcConfigParser;->clearGpriList()V

    goto/16 :goto_a5

    .line 499
    :cond_132
    const/4 v4, 0x1

    goto :goto_e9
.end method

.method public static IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 875
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 876
    .local v0, "adapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_a

    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 877
    :cond_a
    const/4 v1, 0x0

    .line 880
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p0, p1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method private getDefaultType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 716
    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_8d

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "mnc":Ljava/lang/String;
    const-string v0, "NfcConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mcc : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v0, "NfcConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / imsi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / spn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    if-eqz v0, :cond_a1

    .line 725
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    .line 726
    if-eqz p2, :cond_7d

    move-object v3, p2

    .line 727
    :goto_62
    if-eqz p3, :cond_80

    move-object v4, p3

    .line 728
    :goto_65
    if-eqz p4, :cond_83

    move-object v5, p4

    .line 725
    :goto_68
    invoke-virtual/range {v0 .. v5}, Lcom/lge/nfcconfig/NfcConfigParser;->searchGPRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, "config":Ljava/lang/String;
    if-eqz v6, :cond_a1

    .line 730
    const-string v0, "yes"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 731
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    .line 738
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v6    # "config":Ljava/lang/String;
    :goto_7c
    return-object v0

    .line 726
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "mnc":Ljava/lang/String;
    :cond_7d
    const-string v3, ""

    goto :goto_62

    .line 727
    :cond_80
    const-string v4, ""

    goto :goto_65

    .line 728
    :cond_83
    const-string v5, ""

    goto :goto_68

    .line 732
    .restart local v6    # "config":Ljava/lang/String;
    :cond_86
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    .line 736
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v6    # "config":Ljava/lang/String;
    :cond_8d
    const-string v0, "NfcConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "numeric is invalid, numeric : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_a1
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c
.end method

.method public static getInstance()Lcom/lge/nfcconfig/NfcConfigure;
    .registers 1

    .prologue
    .line 836
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 847
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 848
    new-instance v0, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-direct {v0, p0}, Lcom/lge/nfcconfig/NfcConfigure;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    .line 850
    :cond_d
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure;->INSTANCE:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method public static getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 894
    .local v0, "adapterAddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    if-eqz v0, :cond_8

    if-nez p0, :cond_b

    .line 895
    :cond_8
    const-string v1, ""

    .line 898
    :goto_a
    return-object v1

    :cond_b
    invoke-virtual {v0, p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private isBroadcom()Z
    .registers 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->brcm:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isInside()Z
    .registers 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->inside:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isNxp()Z
    .registers 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isSony()Z
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->sony:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setDefaultConfig()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 577
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    iget-object v9, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    iget-object v11, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v11}, Lcom/lge/nfcconfig/NfcConfigParser;->searchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/nfcconfig/NfcConfigListParser$Config;

    move-result-object v0

    .line 579
    .local v0, "config":Lcom/lge/nfcconfig/NfcConfigListParser$Config;
    if-nez v0, :cond_11

    .line 708
    :goto_10
    return-void

    .line 581
    :cond_11
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 582
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->values()[Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_1b
    if-lt v6, v10, :cond_172

    .line 588
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 589
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_27
    if-lt v6, v10, :cond_186

    .line 594
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mWCScenarioEnable:Ljava/lang/String;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->update:Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;

    invoke-virtual {v9}, Lcom/lge/nfcconfig/NfcConfigure$WirelessChargingList;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19a

    move v6, v7

    :goto_38
    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    .line 596
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 597
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_44
    if-lt v6, v10, :cond_19d

    .line 603
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 604
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_50
    if-lt v6, v10, :cond_1b1

    .line 609
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    const-string v9, "mtkbt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1c5

    move v6, v7

    :goto_5d
    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    .line 610
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    const-string v9, "autoapplaunch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1c8

    move v6, v7

    :goto_6a
    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    .line 615
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v6}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "defaultonoff":Ljava/lang/String;
    :try_start_72
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/lge/internal/R$string;->config_nfc_defaultonoff:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7d} :catch_2d8

    move-result-object v1

    .line 621
    :goto_7e
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v6}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1cb

    .line 622
    iput-object v1, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 627
    :goto_8c
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v9}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 628
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    .line 629
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 631
    iput-boolean v7, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    .line 635
    :cond_a6
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 636
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_b0
    if-lt v6, v10, :cond_1d1

    .line 642
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 643
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_bc
    if-lt v6, v10, :cond_1e5

    .line 649
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 650
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->values()[Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_c8
    if-lt v6, v10, :cond_1f9

    .line 656
    sget-object v6, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 657
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_d4
    if-lt v6, v10, :cond_20d

    .line 663
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHostCardEmulationScenario:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "hceScenarioArray":[Ljava/lang/String;
    if-eqz v2, :cond_294

    array-length v6, v2

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v9

    if-ne v6, v9, :cond_294

    .line 665
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e8
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v6

    if-lt v3, v6, :cond_221

    .line 692
    :cond_ee
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAccessControlEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    .line 693
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mVendorStablePatch:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    .line 694
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPermittedSeBroadcastEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    .line 695
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mEmptyPopupSupport:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    .line 696
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mLockScreenPollingEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    .line 697
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mNotifyonlyValidTag:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    .line 698
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSePatchEnabled:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    .line 699
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mTagLongTimePopupSupport:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    .line 700
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAdvancedHCEEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    .line 701
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mAidFilterEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    .line 702
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mRemoveIconWhenLockScreen:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    .line 703
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mLGSharingEnable:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    .line 704
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mUseGpacResultValidTime:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mUseGpacResultValidTime:Z

    goto/16 :goto_10

    .line 582
    .end local v1    # "defaultonoff":Ljava/lang/String;
    .end local v2    # "hceScenarioArray":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_172
    aget-object v5, v9, v6

    .line 583
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mIndicatorType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_182

    .line 584
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    .line 582
    :cond_182
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1b

    .line 589
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;
    :cond_186
    aget-object v5, v9, v6

    .line 590
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mRingSoundScenarioType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_196

    .line 591
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    .line 589
    :cond_196
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;
    :cond_19a
    move v6, v8

    .line 594
    goto/16 :goto_38

    .line 597
    :cond_19d
    aget-object v5, v9, v6

    .line 598
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSecureElementType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ad

    .line 599
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 597
    :cond_1ad
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_44

    .line 604
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;
    :cond_1b1
    aget-object v5, v9, v6

    .line 605
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHandoverSupportType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1c1

    .line 606
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    .line 604
    :cond_1c1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_50

    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;
    :cond_1c5
    move v6, v8

    .line 609
    goto/16 :goto_5d

    :cond_1c8
    move v6, v8

    .line 610
    goto/16 :goto_6a

    .line 624
    .restart local v1    # "defaultonoff":Ljava/lang/String;
    :cond_1cb
    iget-object v6, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mDefaultOnOffType:Ljava/lang/String;

    iput-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    goto/16 :goto_8c

    .line 636
    :cond_1d1
    aget-object v5, v9, v6

    .line 637
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPopupDialogType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e1

    .line 638
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 636
    :cond_1e1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b0

    .line 643
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;
    :cond_1e5
    aget-object v5, v9, v6

    .line 644
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mPowerSaveType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f5

    .line 645
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    .line 643
    :cond_1f5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_bc

    .line 650
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;
    :cond_1f9
    aget-object v5, v9, v6

    .line 651
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mSupportWalletType:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_209

    .line 652
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    .line 650
    :cond_209
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c8

    .line 657
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;
    :cond_20d
    aget-object v5, v9, v6

    .line 658
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    iget-object v11, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mTransactionEventScenario:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21d

    .line 659
    iput-object v5, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    .line 657
    :cond_21d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d4

    .line 666
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;
    .restart local v2    # "hceScenarioArray":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_221
    const/4 v4, 0x0

    .line 667
    .local v4, "isParsing":Z
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    move-result-object v9

    array-length v10, v9

    move v6, v8

    :goto_228
    if-lt v6, v10, :cond_274

    .line 674
    :goto_22a
    if-nez v4, :cond_270

    .line 675
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v9

    sget-object v10, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v6, "NfcConfigure"

    const-string v9, "Invalid NFC HCE Scenario name"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "user"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_270

    .line 678
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid NFC HCE Scenario name : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - default setting (config)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 665
    :cond_270
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e8

    .line 667
    :cond_274
    aget-object v5, v9, v6

    .line 668
    .local v5, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    aget-object v11, v2, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_291

    .line 669
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v9

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const/4 v4, 0x1

    .line 671
    goto :goto_22a

    .line 667
    :cond_291
    add-int/lit8 v6, v6, 0x1

    goto :goto_228

    .line 683
    .end local v3    # "i":I
    .end local v4    # "isParsing":Z
    .end local v5    # "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    :cond_294
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_295
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->length()I

    move-result v6

    if-ge v3, v6, :cond_ee

    .line 684
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v3}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->getListValue(I)Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v8

    sget-object v9, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v6, "NfcConfigure"

    const-string v8, "Invalid NFC HCE Scenario List"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "user"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d5

    .line 687
    iget-object v6, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid NFC HCE Scenario List : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/lge/nfcconfig/NfcConfigListParser$Config;->mHostCardEmulationScenario:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 683
    :cond_2d5
    add-int/lit8 v3, v3, 0x1

    goto :goto_295

    .end local v2    # "hceScenarioArray":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_2d8
    move-exception v6

    goto/16 :goto_7e
.end method

.method private setOpenarrayPowerStatus()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 747
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->offp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "defaulttype":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-eqz v3, :cond_81

    .line 749
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 752
    .local v1, "simState":I
    const-string v3, "NfcConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TelephonyManager.getDefault().getSimState(0) ABSENT-1 READY-5 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v3, 0x5

    if-ne v3, v1, :cond_77

    .line 755
    iget-object v3, p0, Lcom/lge/nfcconfig/NfcConfigure;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 756
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 757
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 758
    :goto_46
    if-eqz v2, :cond_70

    invoke-virtual {v2, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 759
    :goto_4d
    if-eqz v2, :cond_74

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 756
    :goto_53
    invoke-direct {p0, v6, v5, v4, v3}, Lcom/lge/nfcconfig/NfcConfigure;->getDefaultType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .end local v1    # "simState":I
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_57
    :goto_57
    const-string v3, "NfcConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setOpenarrayPowerStatus defaulttype : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-object v0

    .line 757
    .restart local v1    # "simState":I
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6c
    const-string v3, ""

    move-object v5, v3

    goto :goto_46

    .line 758
    :cond_70
    const-string v3, ""

    move-object v4, v3

    goto :goto_4d

    .line 759
    :cond_74
    const-string v3, ""

    goto :goto_53

    .line 760
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_77
    const/4 v3, 0x1

    if-ne v3, v1, :cond_57

    .line 761
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    .line 763
    goto :goto_57

    .line 764
    .end local v1    # "simState":I
    :cond_81
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->oncardrwp2p:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v3}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_57
.end method


# virtual methods
.method public printDefaultConfig()V
    .registers 5

    .prologue
    .line 530
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f6

    .line 531
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure START ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "NfcConfigure"

    const-string v1, " Feature Name : Current Value(config_xxx.xml) / Default Value(config.xml)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "NfcConfigure"

    const-string v1, "===================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTargetOperator : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTargetCountry : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTargetDevice : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lge.nfc.vendor : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "lge.nfc.vendor"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ VendorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SecureElementType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "SecureElementType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultOnOffType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "DefaultOnOffType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HandoverSupportType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverSupportType:Lcom/lge/nfcconfig/NfcConfigure$HandoverScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "HandoverSupportType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MTKSupport : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMTKBluetoothEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HandoverAutoAppLaunch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHandoverAutoAppLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccessControlEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "AccessControlEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IndicatorType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "IndicatorType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RingSoundScenarioType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRingSoundScenarioType:Lcom/lge/nfcconfig/NfcConfigure$SoundScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "RingSoundScenarioType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PowerSaveType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "PowerSaveType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupDialogType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPopupDialogType:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "PopupDialogType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WCScenarioEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "WCScenarioEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PermittedSeBroadcastEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mPermittedSeBroadcastEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "PermittedSeBroadcastEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VendorStablePatch : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "VendorStablePatch"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SupportWalletType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "SupportWalletType"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SePatchEnabled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "SePatchEnabled"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EmptyPopupSupport : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mEmptyPopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "EmptyPopupSupport"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockScreenPollingEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLockScreenPollingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "LockScreenPollingEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotifyonlyValidTag : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mNotifyonlyValidTag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "NotifyonlyValidTag"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TagLongTimePopupSupport : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "TagLongTimePopupSupport"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MccMncSupport : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "MccMncSupport"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdvancedHCEEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "AdvancedHCEEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AidFilterEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mAidFilterEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "AidFilterEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TransactionEventScenario : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTransactionEventScenario:Lcom/lge/nfcconfig/NfcConfigure$TransactionEventScenarioList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "TransactionEventScenario"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoveIconWhenLockScreen : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "RemoveIconWhenLockScreen"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LGSharingEnable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mLGSharingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "LGSharingEnable"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostCardEmulationScenario : screen_unlocked - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "HostCardEmulationScenario"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------------------------------------------screen_locked - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------------------------------------------screen_off - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------------------------------------------power_off - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UseGpacResultValidTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mUseGpacResultValidTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    const-string v3, "UseGpacResultValidTime"

    invoke-virtual {v2, v3}, Lcom/lge/nfcconfig/NfcConfigParser;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v0, "NfcConfigure"

    const-string v1, "====================== LGE NFC Configure END ============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_4f6
    return-void
.end method

.method public resetOpenarrayPowerStatus()Ljava/lang/String;
    .registers 4

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mMccMncSupport:Z

    if-eqz v0, :cond_21

    .line 778
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mTargetFlag:Ljava/lang/String;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->open:Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$DefaultOnOffList;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 779
    invoke-direct {p0}, Lcom/lge/nfcconfig/NfcConfigure;->setOpenarrayPowerStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    .line 783
    :cond_18
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    if-eqz v0, :cond_21

    .line 784
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mConfigParser:Lcom/lge/nfcconfig/NfcConfigParser;

    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigParser;->clearGpriList()V

    .line 787
    :cond_21
    const-string v0, "NfcConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultOnOffType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    return-object v0
.end method
