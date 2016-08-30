.class public final Lcom/lge/nfcaddon/NfcAdapterAddon;
.super Ljava/lang/Object;
.source "NfcAdapterAddon.java"

# interfaces
.implements Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;
.implements Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "lge.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_NFC_LG_SHARING:Ljava/lang/String; = "com.lge.nfc.action.lg_sharing"

.field public static final ACTION_NFC_START:Ljava/lang/String; = "com.lge.nfc.action.start"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final CALLING_NFCSOUND_DEFAULT:Z = false

.field public static final CARD_EMULATION_DISABLED:I = 0x0

.field public static final CARD_EMULATION_ENABLED:I = 0x1

.field public static final CARD_EMULATION_ERROR:I = -0x1

.field public static final DATA_NFC_CHIP_MAN:I = 0x64

.field public static final DATA_NFC_CHIP_VER:I = 0x65

.field public static final DATA_NFC_DEFAULT_ROUTE:I = 0x68

.field public static final DATA_NFC_FW_VER:I = 0x67

.field public static final DATA_NFC_MW_VER:I = 0x66

.field public static final EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

.field public static final EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

.field public static final EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

.field public static final EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String; = "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

.field public static final EXTRA_AID:Ljava/lang/String; = "com.nxp.extra.AID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_PAYLOAD:Ljava/lang/String; = "com.lge.nfc.extra.payload"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "com.nxp.extra.SOURCE"

.field public static final FLAG_HANDOVER_SERVICE:I = 0x1000

.field public static final HANDOVER_CHECKBOX_DEFAULT:Z = true

.field public static final NFC_CARD_MASKING:I = 0x0

.field public static final NFC_CARD_OFF:I = 0x2

.field public static final NFC_CARD_ON:I = 0x1

.field public static final NFC_COMMON_OFF:I = 0x2

.field public static final NFC_COMMON_ON:I = 0x1

.field public static final NFC_DISCOVERY_MASKING:I = 0x2

.field public static final NFC_DISCOVERY_OFF:I = 0x8

.field public static final NFC_DISCOVERY_ON:I = 0x4

.field public static final NFC_HANDOVER_MODE:I = 0x1

.field public static final NFC_MASKING_STEP:I = 0x2

.field public static final NFC_P2P_MASKING:I = 0x4

.field public static final NFC_P2P_MODE_MASKING:I = 0xc0

.field public static final NFC_P2P_OFF:I = 0x20

.field public static final NFC_P2P_ON:I = 0x10

.field public static final NUMBER_CALLING_NFCSOUND:I = 0x3

.field public static final NUMBER_HANDOVER_CHECKBOX:I = 0x2

.field public static final NUMBER_HANDOVER_POPUP_VIEW_IN_MONTHLY:I = 0x65

.field public static final NUMBER_POPUP_MONTHLYCHECK:I = 0x4

.field public static final NUMBER_TAG_DEFAULT_CHECKBOX:I = 0x1

.field public static final NUMBER_TAG_POPUP_VIEW_IN_MONTHLY:I = 0x64

.field public static final NUM_NFC_P2P_BIT_SHIFT:I = 0x6

.field public static final POPUP_MONTHLYCHECK_DEFAULT:Z = false

.field public static final PREF_CALLING_NFCSOUND:Ljava/lang/String; = "calling_nfcsound"

.field public static final PREF_POPUP_MONTHLYCHECK:Ljava/lang/String; = "popup_monthlycheck"

.field public static final PREF_TAG_DEFAULT_CHECKBOX:Ljava/lang/String; = "tag_defaultcheckbox"

.field public static final PREF_TAG_HANDOVER_CHECKBOX:Ljava/lang/String; = "handover_checkbox"

.field public static final STATE_CARD_OFF:I = 0xb

.field public static final STATE_CARD_ON:I = 0xd

.field public static final STATE_DISCOVERY_OFF:I = 0x15

.field public static final STATE_DISCOVERY_ON:I = 0x17

.field public static final STATE_OFF:I = 0x29

.field public static final STATE_ON:I = 0x2b

.field public static final STATE_P2P_OFF:I = 0x1f

.field public static final STATE_P2P_ON:I = 0x21

.field public static final STATE_TURNING_CARD_OFF:I = 0xe

.field public static final STATE_TURNING_CARD_ON:I = 0xc

.field public static final STATE_TURNING_DISCOVERY_OFF:I = 0x18

.field public static final STATE_TURNING_DISCOVERY_ON:I = 0x16

.field public static final STATE_TURNING_OFF:I = 0x2c

.field public static final STATE_TURNING_ON:I = 0x2a

.field public static final STATE_TURNING_P2P_OFF:I = 0x22

.field public static final STATE_TURNING_P2P_ON:I = 0x20

.field public static final STATE_TURNING_WC_OFF:I = 0x36

.field public static final STATE_TURNING_WC_ON:I = 0x34

.field public static final STATE_WC_OFF:I = 0x33

.field public static final STATE_WC_ON:I = 0x35

.field static final TAG:Ljava/lang/String; = "NfcAdapterAddon"

.field public static final TAG_DEFAULT_CHECKBOX_DEFAULT:Z = true

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static isBinded:Z

.field static sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

.field static sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;


# instance fields
.field private mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$preClinit()V

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    .line 508
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    .line 523
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    .line 530
    return-void
.end method

.method static synthetic access$0(Lcom/lge/nfcaddon/NfcAdapterAddon;)Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;
    .registers 2
    .param p0, "arg0"    # Lcom/lge/nfcaddon/NfcAdapterAddon;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 10

    .prologue
    const/16 v9, 0x442

    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "NfcAdapterAddon.java"

    const-class v2, Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcSysState"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x225

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcCardState"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x23f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getCardEmulationInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.ICardEmulationAddon"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getGsmaNfcControllerInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getGsmaNfcControllerInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getGsmaNfcControllerInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x456

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "sendNfcTestCommand"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int:[B"

    const-string v5, "arg0:arg1"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x46b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcAddonPreference"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x481

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setNfcAddonPreference"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int:boolean"

    const-string v5, "arg0:arg1"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x499

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "isWirelessChargingModeOn"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4aa

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setNfcPowerStatus"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setNfcPowerStatus"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcDiscoveryState"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x257

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcConfigureValue"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "java.lang.String"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x53a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setPresentUid"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x551

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setLGSharingModeCallback"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "java.lang.String:com.lge.nfcaddon.ILGSharingMessageCallback"

    const-string v5, "arg0:arg1"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x592

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcInfo"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setForceEnableMode"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5c3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setForceEnableMode"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5c5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "setForceEnableMode"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, "int"

    const-string v5, "arg0"

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getNfcP2pState"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x270

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "isNfcSystemEnabled"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x38d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "isNfcCardModeEnabled"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x39f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "isNfcRwModeEnabled"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3b1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "isNfcP2pModeEnabled"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3c5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getCardEmulationInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.ICardEmulationAddon"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x42d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "401"

    const-string v2, "getGsmaNfcControllerInterface"

    const-string v3, "com.lge.nfcaddon.INfcAdapterAddon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android.os.RemoteException"

    const-string v7, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x438

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final getCardEmulationInterface_aroundBody16(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;
    .registers 4

    .prologue
    .line 1069
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v0

    return-object v0
.end method

.method private static final getCardEmulationInterface_aroundBody17$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody16(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody16(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody16(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getCardEmulationInterface_aroundBody20(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;
    .registers 4

    .prologue
    .line 1090
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v0

    return-object v0
.end method

.method private static final getCardEmulationInterface_aroundBody21$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody20(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody20(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody20(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody18(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 4

    .prologue
    .line 1080
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    return-object v0
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody19$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody18(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody18(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody18(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody22(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 4

    .prologue
    .line 1090
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    return-object v0
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody23$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody22(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody22(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody22(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody24(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 4

    .prologue
    .line 1100
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    return-object v0
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody25$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody24(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody24(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody24(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody26(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 4

    .prologue
    .line 1110
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    return-object v0
.end method

.method private static final getGsmaNfcControllerInterface_aroundBody27$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody26(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody26(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody26(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v3

    goto :goto_a
.end method

.method public static declared-synchronized getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;
    .registers 3

    .prologue
    .line 1005
    const-class v1, Lcom/lge/nfcaddon/NfcAdapterAddon;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->hasNfcFeature()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1006
    const-string v0, "NfcAdapterAddon"

    const-string v2, "this device does not have NFC support"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_25

    .line 1008
    const/4 v0, 0x0

    .line 1015
    :goto_11
    monitor-exit v1

    return-object v0

    .line 1011
    :cond_13
    :try_start_13
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    if-nez v0, :cond_22

    .line 1012
    :cond_1b
    new-instance v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    invoke-direct {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;-><init>()V

    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 1015
    :cond_22
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_25

    goto :goto_11

    .line 1005
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final getNfcAddonPreference_aroundBody30(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1153
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcAddonPreference(I)Z

    move-result v0

    return v0
.end method

.method private static final getNfcAddonPreference_aroundBody31$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference_aroundBody30(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference_aroundBody30(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference_aroundBody30(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final getNfcCardState_aroundBody2(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I
    .registers 4

    .prologue
    .line 575
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcCardState()I

    move-result v0

    return v0
.end method

.method private static final getNfcCardState_aroundBody3$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcCardState_aroundBody2(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcCardState_aroundBody2(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcCardState_aroundBody2(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final getNfcConfigureValue_aroundBody40(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1338
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getNfcConfigureValue_aroundBody41$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureValue_aroundBody40(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureValue_aroundBody40(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureValue_aroundBody40(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getNfcDiscoveryState_aroundBody4(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I
    .registers 4

    .prologue
    .line 599
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcDiscoveryState()I

    move-result v0

    return v0
.end method

.method private static final getNfcDiscoveryState_aroundBody5$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcDiscoveryState_aroundBody4(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcDiscoveryState_aroundBody4(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcDiscoveryState_aroundBody4(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final getNfcInfo_aroundBody46(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1456
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getNfcInfo_aroundBody47$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcInfo_aroundBody46(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v3

    .line 29
    :goto_a
    return-object v3

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcInfo_aroundBody46(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    goto :goto_a

    .line 25
    :catch_10
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcInfo_aroundBody46(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method private static final getNfcP2pState_aroundBody6(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I
    .registers 4

    .prologue
    .line 624
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcP2pState()I

    move-result v0

    return v0
.end method

.method private static final getNfcP2pState_aroundBody7$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcP2pState_aroundBody6(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcP2pState_aroundBody6(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcP2pState_aroundBody6(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final getNfcSysState_aroundBody0(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I
    .registers 4

    .prologue
    .line 549
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->getNfcSysState()I

    move-result v0

    return v0
.end method

.method private static final getNfcSysState_aroundBody1$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcSysState_aroundBody0(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcSysState_aroundBody0(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcSysState_aroundBody0(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)I

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1027
    const-string v3, "nfcaddon"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1028
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_14

    .line 1029
    const-string v3, "NfcAdapterAddon"

    const-string v4, "nfcaddon binder null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    sput-boolean v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    .line 1031
    const/4 v0, 0x0

    .line 1036
    :goto_13
    return-object v0

    .line 1034
    :cond_14
    invoke-static {v1}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    .line 1035
    .local v0, "addon":Lcom/lge/nfcaddon/INfcAdapterAddon;
    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    sput-boolean v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->isBinded:Z

    goto :goto_13
.end method

.method private static hasNfcFeature()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1508
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1509
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_f

    .line 1510
    const-string v3, "NfcAdapterAddon"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :goto_e
    return v2

    .line 1514
    :cond_f
    :try_start_f
    const-string v3, "android.hardware.nfc"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v2

    goto :goto_e

    .line 1515
    :catch_16
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NfcAdapterAddon"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private static final isNfcCardModeEnabled_aroundBody10(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 927
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v0

    return v0
.end method

.method private static final isNfcCardModeEnabled_aroundBody11$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled_aroundBody10(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled_aroundBody10(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled_aroundBody10(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final isNfcP2pModeEnabled_aroundBody14(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 965
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v0

    return v0
.end method

.method private static final isNfcP2pModeEnabled_aroundBody15$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled_aroundBody14(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled_aroundBody14(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled_aroundBody14(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final isNfcRwModeEnabled_aroundBody12(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 945
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v0

    return v0
.end method

.method private static final isNfcRwModeEnabled_aroundBody13$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled_aroundBody12(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled_aroundBody12(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled_aroundBody12(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final isNfcSystemEnabled_aroundBody8(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 909
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v0

    return v0
.end method

.method private static final isNfcSystemEnabled_aroundBody9$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled_aroundBody8(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled_aroundBody8(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled_aroundBody8(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final isWirelessChargingModeOn_aroundBody34(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 4

    .prologue
    .line 1194
    invoke-interface {p1}, Lcom/lge/nfcaddon/INfcAdapterAddon;->isWirelessChargingModeOn()Z

    move-result v0

    return v0
.end method

.method private static final isWirelessChargingModeOn_aroundBody35$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 11
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p3, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p4, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p6, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn_aroundBody34(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p4, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn_aroundBody34(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn_aroundBody34(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final sendNfcTestCommand_aroundBody28(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    .line 1131
    invoke-interface {p1, p2, p3}, Lcom/lge/nfcaddon/INfcAdapterAddon;->sendNfcTestCommand(I[B)Z

    move-result v0

    return v0
.end method

.method private static final sendNfcTestCommand_aroundBody29$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 13
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # [B
    .param p5, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p6, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p7, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p8, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->sendNfcTestCommand_aroundBody28(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->sendNfcTestCommand_aroundBody28(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->sendNfcTestCommand_aroundBody28(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setForceEnableMode_aroundBody48(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1475
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setForceEnableMode(I)Z

    move-result v0

    return v0
.end method

.method private static final setForceEnableMode_aroundBody49$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody48(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody48(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody48(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setForceEnableMode_aroundBody50(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1477
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setForceEnableMode(I)Z

    move-result v0

    return v0
.end method

.method private static final setForceEnableMode_aroundBody51$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody50(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody50(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody50(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setForceEnableMode_aroundBody52(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1500
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setForceEnableMode(I)Z

    move-result v0

    return v0
.end method

.method private static final setForceEnableMode_aroundBody53$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody52(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody52(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody52(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setLGSharingModeCallback_aroundBody44(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    .line 1426
    invoke-interface {p1, p2, p3}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setLGSharingModeCallback(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z

    move-result v0

    return v0
.end method

.method private static final setLGSharingModeCallback_aroundBody45$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 13
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .param p5, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p6, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p7, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p8, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setLGSharingModeCallback_aroundBody44(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setLGSharingModeCallback_aroundBody44(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setLGSharingModeCallback_aroundBody44(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setNfcAddonPreference_aroundBody32(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    .line 1177
    invoke-interface {p1, p2, p3}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setNfcAddonPreference(IZ)Z

    move-result v0

    return v0
.end method

.method private static final setNfcAddonPreference_aroundBody33$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 13
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Z
    .param p5, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p6, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p7, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p8, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p8}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference_aroundBody32(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p6, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference_aroundBody32(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3, p4}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference_aroundBody32(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setNfcPowerStatus_aroundBody36(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1232
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setNfcPowerStatus(I)Z

    move-result v0

    return v0
.end method

.method private static final setNfcPowerStatus_aroundBody37$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody36(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody36(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody36(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setNfcPowerStatus_aroundBody38(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 1238
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setNfcPowerStatus(I)Z

    move-result v0

    return v0
.end method

.method private static final setNfcPowerStatus_aroundBody39$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 12
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody38(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    .line 29
    :goto_e
    return-object v3

    .line 24
    :cond_f
    :try_start_f
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody38(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_e

    .line 25
    :catch_18
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody38(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)Z

    move-result v3

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_e
.end method

.method private static final setPresentUid_aroundBody42(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 1361
    invoke-interface {p1, p2}, Lcom/lge/nfcaddon/INfcAdapterAddon;->setPresentUid(I)V

    return-void
.end method

.method private static final setPresentUid_aroundBody43$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .registers 13
    .param p0, "ajc$this"    # Lcom/lge/nfcaddon/NfcAdapterAddon;
    .param p1, "target"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p2, "arg0"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/lge/nfcaddon/ANfcAdapterAddon;
    .param p5, "service"    # Lcom/lge/nfcaddon/INfcAdapterAddon;
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lorg/aspectj/lang/JoinPoint;

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-interface {p7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, "thisObject":Ljava/lang/Object;
    if-nez v2, :cond_b

    .line 20
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setPresentUid_aroundBody42(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)V

    .line 29
    :goto_a
    return-object v4

    .line 24
    :cond_b
    :try_start_b
    invoke-static {p0, p5, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setPresentUid_aroundBody42(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 25
    :catch_f
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 28
    .local v0, "adapteraddon":Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0, v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 29
    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->ajc$inlineAccessFieldGet$com_lge_nfcaddon_ANfcAdapterAddon$com_lge_nfcaddon_NfcAdapterAddon$sServiceAddon()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v3

    invoke-static {p0, v3, p2, p3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setPresentUid_aroundBody42(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;)V

    goto :goto_a
.end method


# virtual methods
.method public attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1053
    const-string v1, "NfcAdapterAddon"

    const-string v2, "NFC Addon service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1054
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getServiceAddonInterface()Lcom/lge/nfcaddon/INfcAdapterAddon;

    move-result-object v0

    .line 1055
    .local v0, "serviceAddon":Lcom/lge/nfcaddon/INfcAdapterAddon;
    if-nez v0, :cond_15

    .line 1056
    const-string v1, "NfcAdapterAddon"

    const-string v2, "could not retrieve NFC Addon service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_14
    return-void

    .line 1063
    :cond_15
    sput-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    goto :goto_14
.end method

.method public checkFPRICRC()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1384
    :try_start_2
    const-string v3, "DefaultOnOffType"

    invoke-virtual {p0, v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, "defaultOnOffValue":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1409
    .end local v0    # "defaultOnOffValue":Ljava/lang/String;
    :cond_a
    :goto_a
    return v1

    .line 1389
    .restart local v0    # "defaultOnOffValue":Ljava/lang/String;
    :cond_b
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2d

    .line 1390
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1391
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1392
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1393
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 1390
    goto :goto_a

    .line 1395
    :cond_2d
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1398
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "card"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a

    .line 1401
    :cond_41
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "rw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a

    .line 1404
    :cond_4f
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v3, "p2p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5f

    move-result v3

    if-gez v3, :cond_a

    :cond_5d
    move v1, v2

    .line 1407
    goto :goto_a

    .line 1409
    .end local v0    # "defaultOnOffValue":Ljava/lang/String;
    :catch_5f
    move-exception v2

    goto :goto_a
.end method

.method public deinitNfcSystem()Z
    .registers 3

    .prologue
    .line 680
    const-string v0, "NfcAdapterAddon"

    const-string v1, "deinitNfcSystem - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public disableNfcCard()Z
    .registers 3

    .prologue
    .line 744
    const-string v0, "NfcAdapterAddon"

    const-string v1, "disableNfcCard - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public disableNfcDiscovery()Z
    .registers 3

    .prologue
    .line 812
    const-string v0, "NfcAdapterAddon"

    const-string v1, "disableNfcDiscovery - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public disableNfcP2p()Z
    .registers 3

    .prologue
    .line 883
    const-string v0, "NfcAdapterAddon"

    const-string v1, "disableNfcP2p - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public enableNfcCard()Z
    .registers 3

    .prologue
    .line 711
    const-string v0, "NfcAdapterAddon"

    const-string v1, "enableNfcCard - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public enableNfcDiscovery()Z
    .registers 3

    .prologue
    .line 776
    const-string v0, "NfcAdapterAddon"

    const-string v1, "enableNfcDiscovery - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public enableNfcP2p()Z
    .registers 3

    .prologue
    .line 848
    const-string v0, "NfcAdapterAddon"

    const-string v1, "enableNfcP2p - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterCardState()I
    .registers 9

    .prologue
    .line 575
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcCardState_aroundBody3$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 580
    :goto_18
    return v0

    .line 576
    :catch_19
    move-exception v7

    .line 577
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 580
    const/16 v0, 0xb

    goto :goto_18
.end method

.method public getAdapterDiscoveryState()I
    .registers 9

    .prologue
    .line 599
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcDiscoveryState_aroundBody5$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 604
    :goto_18
    return v0

    .line 600
    :catch_19
    move-exception v7

    .line 601
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 604
    const/16 v0, 0x15

    goto :goto_18
.end method

.method public getAdapterP2pState()I
    .registers 9

    .prologue
    .line 624
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcP2pState_aroundBody7$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 629
    :goto_18
    return v0

    .line 625
    :catch_19
    move-exception v7

    .line 626
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 629
    const/16 v0, 0x1f

    goto :goto_18
.end method

.method public getAdapterSysState()I
    .registers 9

    .prologue
    .line 549
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcSysState_aroundBody1$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 554
    :goto_18
    return v0

    .line 550
    :catch_19
    move-exception v7

    .line 551
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 554
    const/16 v0, 0x29

    goto :goto_18
.end method

.method public getCardEmulationAddonService()Lcom/lge/nfcaddon/CardEmulationAddon;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1090
    :try_start_1
    new-instance v10, Lcom/lge/nfcaddon/CardEmulationAddon;

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v2

    move-object v7, v3

    invoke-static/range {v1 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody21$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-object v9, v0

    sget-object v2, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v2

    move-object v7, v3

    invoke-static/range {v1 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody23$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-direct {v10, v9, v1, p0}, Lcom/lge/nfcaddon/CardEmulationAddon;-><init>(Lcom/lge/nfcaddon/ICardEmulationAddon;Lcom/lge/nfcaddon/IGsmaNfcController;Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move-object v1, v10

    .line 1094
    :goto_35
    return-object v1

    .line 1091
    :catch_36
    move-exception v8

    .line 1092
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "NfcAdapterAddon"

    const-string v2, "getCardEmulationAddonService failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v1, v11

    .line 1094
    goto :goto_35
.end method

.method public getCardEmulationAddonServiceInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1069
    :try_start_1
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getCardEmulationInterface_aroundBody17$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcaddon/ICardEmulationAddon;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 1073
    :goto_17
    return-object v0

    .line 1070
    :catch_18
    move-exception v7

    .line 1071
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "NfcAdapterAddon"

    const-string v1, "getCardEmulationAddonServiceInterface failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v0, v8

    .line 1073
    goto :goto_17
.end method

.method public getGsmaNfcControllerService()Lcom/lge/nfcaddon/GsmaNfcController;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1110
    :try_start_1
    new-instance v8, Lcom/lge/nfcaddon/GsmaNfcController;

    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody27$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-direct {v8, v0}, Lcom/lge/nfcaddon/GsmaNfcController;-><init>(Lcom/lge/nfcaddon/IGsmaNfcController;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-object v0, v8

    .line 1114
    :goto_1d
    return-object v0

    .line 1111
    :catch_1e
    move-exception v7

    .line 1112
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "NfcAdapterAddon"

    const-string v1, "getGsmaNfcControllerService failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v0, v9

    .line 1114
    goto :goto_1d
.end method

.method public getGsmaNfcControllerService(Landroid/content/Context;)Lcom/lge/nfcaddon/GsmaNfcController;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 1100
    :try_start_1
    new-instance v8, Lcom/lge/nfcaddon/GsmaNfcController;

    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody25$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-direct {v8, p1, v0, p0}, Lcom/lge/nfcaddon/GsmaNfcController;-><init>(Landroid/content/Context;Lcom/lge/nfcaddon/IGsmaNfcController;Lcom/lge/nfcaddon/GsmaNfcController$NfcAddonRecovery;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-object v0, v8

    .line 1104
    :goto_1d
    return-object v0

    .line 1101
    :catch_1e
    move-exception v7

    .line 1102
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "NfcAdapterAddon"

    const-string v1, "getGsmaNfcControllerService failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v0, v9

    .line 1104
    goto :goto_1d
.end method

.method public getGsmaNfcControllerServiceInterface()Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1080
    :try_start_1
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getGsmaNfcControllerInterface_aroundBody19$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcaddon/IGsmaNfcController;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 1084
    :goto_17
    return-object v0

    .line 1081
    :catch_18
    move-exception v7

    .line 1082
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "NfcAdapterAddon"

    const-string v1, "getGsmaNfcControllerServiceInterface failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v0, v8

    .line 1084
    goto :goto_17
.end method

.method public getNfcAddonPreference(I)Z
    .registers 11
    .param p1, "prefnumber"    # I

    .prologue
    .line 1153
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAddonPreference_aroundBody31$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result v0

    .line 1156
    :goto_1d
    return v0

    .line 1154
    :catch_1e
    move-exception v8

    .line 1155
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1156
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getNfcConfigureMap(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    .line 1329
    const-string v0, ""

    .line 1349
    :goto_8
    return-object v0

    .line 1332
    :cond_9
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1333
    iget-object v0, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    .line 1338
    :cond_1a
    :try_start_1a
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_20:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureValue_aroundBody41$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_36

    .line 1344
    if-nez v0, :cond_3d

    .line 1345
    const-string v0, ""

    goto :goto_8

    .line 1339
    :catch_36
    move-exception v8

    .line 1340
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1341
    const-string v0, ""

    goto :goto_8

    .line 1348
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3d
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public getNfcConfigureMap(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1304
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1314
    :cond_5
    :goto_5
    return v2

    .line 1307
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    .local v1, "valueString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcConfigureMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "comparevalue":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public getNfcInfo(I)Ljava/lang/String;
    .registers 12
    .param p1, "command"    # I

    .prologue
    const/4 v9, 0x0

    .line 1454
    const-string v0, "NfcAdapterAddon"

    const-string v1, "getNfcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :try_start_8
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_23:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcInfo_aroundBody47$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_24

    .line 1459
    :goto_23
    return-object v0

    .line 1457
    :catch_24
    move-exception v8

    .line 1458
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move-object v0, v9

    .line 1459
    goto :goto_23
.end method

.method public initNfcSystem()Z
    .registers 3

    .prologue
    .line 649
    const-string v0, "NfcAdapterAddon"

    const-string v1, "initNfcSystem - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public isNfcCardModeEnabled()Z
    .registers 9

    .prologue
    .line 927
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcCardModeEnabled_aroundBody11$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 930
    :goto_18
    return v0

    .line 928
    :catch_19
    move-exception v7

    .line 929
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 930
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isNfcP2pModeEnabled()Z
    .registers 9

    .prologue
    .line 965
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled_aroundBody15$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 968
    :goto_18
    return v0

    .line 966
    :catch_19
    move-exception v7

    .line 967
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 968
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isNfcRwModeEnabled()Z
    .registers 9

    .prologue
    .line 945
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcRwModeEnabled_aroundBody13$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 948
    :goto_18
    return v0

    .line 946
    :catch_19
    move-exception v7

    .line 947
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 948
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isNfcSystemEnabled()Z
    .registers 9

    .prologue
    .line 909
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled_aroundBody9$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 912
    :goto_18
    return v0

    .line 910
    :catch_19
    move-exception v7

    .line 911
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 912
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isWirelessChargingModeOn()Z
    .registers 9

    .prologue
    .line 1192
    const-string v0, "NfcAdapterAddon"

    const-string v1, "isWirelessChargingModeOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :try_start_7
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn_aroundBody35$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_20

    move-result v0

    .line 1197
    :goto_1f
    return v0

    .line 1195
    :catch_20
    move-exception v7

    .line 1196
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1197
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public sendNfcTestCommand(I[B)Z
    .registers 13
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    .line 1131
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v6, v1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->sendNfcTestCommand_aroundBody29$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;I[BLorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    .line 1134
    :goto_1e
    return v0

    .line 1132
    :catch_1f
    move-exception v9

    .line 1133
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1134
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public setForceEnableMode(I)Z
    .registers 12
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x0

    .line 1492
    const-string v0, "NfcAdapterAddon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setForceEnableMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    if-nez v0, :cond_22

    .line 1495
    const-string v0, "NfcAdapterAddon"

    const-string v1, "Error : NFC Addon Interface is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1503
    :goto_21
    return v0

    .line 1500
    :cond_22
    :try_start_22
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_26:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody53$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_40

    move-result v0

    goto :goto_21

    .line 1501
    :catch_40
    move-exception v8

    .line 1502
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move v0, v9

    .line 1503
    goto :goto_21
.end method

.method public setForceEnableMode(Z)Z
    .registers 11
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1471
    const-string v0, "NfcAdapterAddon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setForceEnableMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    if-eqz p1, :cond_35

    .line 1475
    :try_start_16
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    const/16 v2, 0x2b

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_24:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, v1, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody49$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1481
    :goto_34
    return v0

    .line 1477
    :cond_35
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    const/16 v2, 0x29

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_25:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, v1, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setForceEnableMode_aroundBody51$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_52} :catch_54

    move-result v0

    goto :goto_34

    .line 1479
    :catch_54
    move-exception v8

    .line 1480
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1481
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public setLGSharingModeCallback(Landroid/content/Context;Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    .prologue
    const/4 v10, 0x0

    .line 1419
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_9

    move v0, v10

    .line 1437
    :goto_8
    return v0

    .line 1425
    :cond_9
    :try_start_9
    iput-object p2, p0, Lcom/lge/nfcaddon/NfcAdapterAddon;->mSharingCallback:Lcom/lge/nfcaddon/NfcAdapterAddon$LGSharingCallback;

    .line 1426
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    new-instance v3, Lcom/lge/nfcaddon/NfcAdapterAddon$1;

    invoke-direct {v3, p0}, Lcom/lge/nfcaddon/NfcAdapterAddon$1;-><init>(Lcom/lge/nfcaddon/NfcAdapterAddon;)V

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_22:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, v1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setLGSharingModeCallback_aroundBody45$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;Lorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_8

    .line 1435
    :catch_29
    move-exception v9

    .line 1436
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    move v0, v10

    .line 1437
    goto :goto_8
.end method

.method public setNfcAddonPreference(IZ)Z
    .registers 13
    .param p1, "prefnumber"    # I
    .param p2, "prefvalue"    # Z

    .prologue
    .line 1177
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v6, v1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcAddonPreference_aroundBody33$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;IZLorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-result v0

    .line 1180
    :goto_22
    return v0

    .line 1178
    :catch_23
    move-exception v9

    .line 1179
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1180
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setNfcPowerStatus(I)Z
    .registers 12
    .param p1, "status"    # I

    .prologue
    .line 1230
    const-string v0, "NfcAdapterAddon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNfcPowerStatus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :try_start_14
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody37$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_30} :catch_32

    move-result v0

    .line 1242
    :goto_31
    return v0

    .line 1233
    :catch_32
    move-exception v8

    .line 1234
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1237
    :try_start_36
    const-string v0, "NfcAdapterAddon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retry setNfcPowerStatus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setNfcPowerStatus_aroundBody39$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_66} :catch_68

    move-result v0

    goto :goto_31

    .line 1239
    :catch_68
    move-exception v9

    .line 1240
    .local v9, "re":Ljava/lang/Exception;
    invoke-virtual {p0, v9}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 1242
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public setPresentUid(I)V
    .registers 11
    .param p1, "id"    # I

    .prologue
    .line 1359
    const-string v0, "NfcAdapterAddon"

    const-string v1, "setPresentUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :try_start_7
    sget-object v1, Lcom/lge/nfcaddon/NfcAdapterAddon;->sServiceAddon:Lcom/lge/nfcaddon/INfcAdapterAddon;

    sget-object v0, Lcom/lge/nfcaddon/NfcAdapterAddon;->ajc$tjp_21:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/nfcaddon/ANfcAdapterAddon;->aspectOf()Lcom/lge/nfcaddon/ANfcAdapterAddon;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/lge/nfcaddon/NfcAdapterAddon;->setPresentUid_aroundBody43$advice(Lcom/lge/nfcaddon/NfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;ILorg/aspectj/lang/JoinPoint;Lcom/lge/nfcaddon/ANfcAdapterAddon;Lcom/lge/nfcaddon/INfcAdapterAddon;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    .line 1365
    :goto_1f
    return-void

    .line 1363
    :catch_20
    move-exception v8

    .line 1364
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v8}, Lcom/lge/nfcaddon/NfcAdapterAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method public updateP2pState()Z
    .registers 3

    .prologue
    .line 981
    const-string v0, "NfcAdapterAddon"

    const-string v1, "updateP2pState - Not support(deprecated API)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v0, 0x0

    return v0
.end method
