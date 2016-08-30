.class public Lcom/lge/wifi/impl/aggregation/VZWAggregation;
.super Ljava/lang/Object;
.source "VZWAggregation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;,
        Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;,
        Lcom/lge/wifi/impl/aggregation/VZWAggregation$HttpAsyncTask;
    }
.end annotation


# static fields
.field private static final AGG_STATE_COMPLETED:I = 0x0

.field private static final AGG_STATE_IDLE:I = 0x0

.field private static final AGG_STATE_RUNNING:I = 0x0

.field public static final EXTRA_AGGREGATION_DESC:Ljava/lang/String; = "aggregation_description"

.field public static final EXTRA_AGGREGATION_RESULT:Ljava/lang/String; = "aggregation_result"

.field public static final EXTRA_BW_USER_GROUP:Ljava/lang/String; = "aggregation_bw_user_group"

.field public static final EXTRA_LOCATION:Ljava/lang/String; = "aggregation_location"

.field public static final SIM_TYPE_NOT_VZW:I = 0x3

.field public static final SIM_TYPE_VZW_3G:I = 0x4

.field public static final SIM_TYPE_VZW_4G:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WiFiAggregation"

.field public static final WIFI_AGGREGATION_SERVER_END:Ljava/lang/String; = "com.lge.wifi.impl.aggregation.end"

.field public static final WIFI_AGGREGATION_SERVER_START:Ljava/lang/String; = "com.lge.wifi.impl.aggregation.start"

.field static param_deviceModel_Name:Ljava/lang/String;

.field static param_deviceModel_Value:Ljava/lang/String;

.field static param_deviceType_Name:Ljava/lang/String;

.field static param_deviceType_Value:Ljava/lang/String;

.field static param_password_Name:Ljava/lang/String;

.field static param_password_Value:Ljava/lang/String;

.field static param_stationId_Name:Ljava/lang/String;

.field static param_stationId_Value:Ljava/lang/String;

.field static param_userName_Name:Ljava/lang/String;

.field static param_userName_Value:Ljava/lang/String;

.field private static retryCnt:I


# instance fields
.field private context:Landroid/content/Context;

.field private lastUrl:Ljava/lang/String;

.field private mState:I

.field mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

.field private mainURL:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;

.field private result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

.field private subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    .line 67
    const-string v0, "device-type"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceType_Name:Ljava/lang/String;

    .line 68
    const-string v0, "3"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceType_Value:Ljava/lang/String;

    .line 69
    const-string v0, "device-model-number"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceModel_Name:Ljava/lang/String;

    .line 71
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_deviceModel_Value:Ljava/lang/String;

    .line 72
    const-string v0, "calling-station-id"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Name:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_stationId_Value:Ljava/lang/String;

    .line 74
    const-string v0, "UserName"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Name:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_userName_Value:Ljava/lang/String;

    .line 76
    const-string v0, "Password"

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Name:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->param_password_Value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 54
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 55
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    .line 56
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    .line 58
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 61
    const-string v0, "www.verizon.com"

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainURL:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->lastUrl:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    .line 81
    return-void
.end method

.method static synthetic access$0(I)V
    .registers 1

    .prologue
    .line 59
    sput p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    return-void
.end method

.method static synthetic access$10(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    return-void
.end method

.method static synthetic access$12(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->result:Lcom/lge/wifi/impl/aggregation/HttpConnectionResult;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->subThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationSubThread;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/aggregation/VZWAggregation;I)V
    .registers 2

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    return-void
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getEQIMID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->lastUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->retryCnt:I

    return v0
.end method

.method static synthetic access$9(Lcom/lge/wifi/impl/aggregation/VZWAggregation;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->redirectUrl:Ljava/lang/String;

    return-void
.end method

.method private getEQIMID()Ljava/lang/String;
    .registers 7

    .prologue
    .line 351
    const/4 v2, 0x1

    .line 352
    .local v2, "TYPE_MEID":I
    const/4 v1, 0x3

    .line 353
    .local v1, "TYPE_EUIMID":I
    const-string v0, ""

    .line 355
    .local v0, "EQIMID":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    if-nez v3, :cond_a

    .line 356
    const/4 v3, 0x0

    .line 370
    :goto_9
    return-object v3

    .line 358
    :cond_a
    const-string v3, "ro.telephony.default_network"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3c

    .line 359
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManagerEx;->getDeviceIdForVZW(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_1a
    if-eqz v0, :cond_20

    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_20
    const-string v3, "WiFiAggregation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " getEQIMID() return ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 370
    goto :goto_9

    .line 361
    :cond_3c
    iget-object v3, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mTelephonyMgrEx:Landroid/telephony/TelephonyManagerEx;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManagerEx;->getDeviceIdForVZW(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private getHashString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "inputString"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_9

    .line 325
    const/4 v5, 0x0

    .line 345
    :goto_8
    return-object v5

    .line 329
    :cond_9
    :try_start_9
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 330
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 332
    .local v1, "input":[B
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v2, v1, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 333
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 335
    .local v3, "mdbytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    array-length v5, v3
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_1e} :catch_3c

    if-lt v0, v5, :cond_25

    .line 345
    .end local v0    # "i":I
    .end local v1    # "input":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "mdbytes":[B
    :goto_20
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 337
    .restart local v0    # "i":I
    .restart local v1    # "input":[B
    .restart local v2    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "mdbytes":[B
    :cond_25
    :try_start_25
    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_39} :catch_3c

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 342
    .end local v0    # "i":I
    .end local v1    # "input":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "mdbytes":[B
    :catch_3c
    move-exception v5

    const-string v5, "WiFiAggregation"

    const-string v6, " Error - Hash Algorithm is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method public startAggregation(Landroid/content/Context;)V
    .registers 5
    .param p1, "rContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string v0, "WiFiAggregation"

    const-string v1, "Aggregation request received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->context:Landroid/content/Context;

    .line 90
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_2e

    .line 92
    const-string v0, "WiFiAggregation"

    const-string v1, "Start aggregation thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 95
    new-instance v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 96
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2d

    .line 98
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->start()V

    .line 114
    :cond_2d
    :goto_2d
    return-void

    .line 102
    :cond_2e
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_48

    .line 104
    const-string v0, "WiFiAggregation"

    const-string v1, "Restart aggregation thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput v2, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    .line 106
    new-instance v0, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;-><init>(Lcom/lge/wifi/impl/aggregation/VZWAggregation;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    .line 107
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mainThread:Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/aggregation/VZWAggregation$AggregationMainThread;->start()V

    goto :goto_2d

    .line 110
    :cond_48
    iget v0, p0, Lcom/lge/wifi/impl/aggregation/VZWAggregation;->mState:I

    if-nez v0, :cond_2d

    .line 112
    const-string v0, "WiFiAggregation"

    const-string v1, "Running thread exist. Ignore request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
