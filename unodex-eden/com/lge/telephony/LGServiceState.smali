.class public Lcom/lge/telephony/LGServiceState;
.super Ljava/lang/Object;
.source "LGServiceState.java"


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x3

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LGServiceState"

.field private static mRoamingType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/lge/telephony/LGServiceState;


# instance fields
.field private mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

.field private mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0x9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;
    .registers 4
    .param p0, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 88
    const-class v1, Lcom/lge/telephony/LGServiceState;

    monitor-enter v1

    :try_start_3
    const-string v0, "LGServiceState"

    const-string v2, "You are using ServiceState for LG API"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    if-nez v0, :cond_15

    .line 91
    new-instance v0, Lcom/lge/telephony/LGServiceState;

    invoke-direct {v0}, Lcom/lge/telephony/LGServiceState;-><init>()V

    sput-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    .line 94
    :cond_15
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;

    invoke-virtual {v0, p0}, Lcom/lge/telephony/LGServiceState;->setServiceState(Landroid/telephony/ServiceState;)V

    .line 96
    sget-object v0, Lcom/lge/telephony/LGServiceState;->sInstance:Lcom/lge/telephony/LGServiceState;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRoamingType(Landroid/telephony/ServiceState;)I
    .registers 5
    .param p0, "st"    # Landroid/telephony/ServiceState;

    .prologue
    .line 269
    const/4 v1, 0x1

    .line 270
    .local v1, "rvalue":I
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 273
    .local v0, "roamingIndcation":I
    :try_start_5
    sget-object v2, Lcom/lge/telephony/LGServiceState;->mRoamingType:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_14} :catch_16

    move-result v1

    .line 278
    :goto_15
    return v1

    .line 275
    :catch_16
    move-exception v2

    const/4 v1, 0x3

    goto :goto_15
.end method

.method public static isCdmaFormat(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .prologue
    .line 291
    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    .line 292
    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 293
    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    .line 294
    const/16 v0, 0x8

    if-eq p0, v0, :cond_16

    .line 295
    const/16 v0, 0xc

    if-eq p0, v0, :cond_16

    .line 296
    const/4 v0, 0x6

    if-eq p0, v0, :cond_16

    .line 291
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public static isDataSearching(Landroid/telephony/ServiceState;)Z
    .registers 2
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getLGServiceStateImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isDataSearching()Z

    move-result v0

    return v0
.end method

.method public static isEhrpd(I)Z
    .registers 2
    .param p0, "radioTechnology"    # I

    .prologue
    .line 307
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVoiceSearching(Landroid/telephony/ServiceState;)Z
    .registers 2
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getLGServiceStateImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isVoiceSearching()Z

    move-result v0

    return v0
.end method

.method public static setDataSearching(Landroid/telephony/ServiceState;Z)V
    .registers 3
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "isDataSearching"    # Z

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getLGServiceStateImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataSearching(Z)V

    .line 239
    return-void
.end method

.method public static setVoiceSearching(Landroid/telephony/ServiceState;Z)V
    .registers 3
    .param p0, "ss"    # Landroid/telephony/ServiceState;
    .param p1, "isVoiceSearching"    # Z

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getLGServiceStateImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceSearching(Z)V

    .line 230
    return-void
.end method


# virtual methods
.method public getCheck64QAM()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getCheck64QAM()I

    move-result v0

    return v0
.end method

.method public getDataNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getDataNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoaming()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getDataRoaming()Z

    move-result v0

    return v0
.end method

.method public getRATDualCarrier()I
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getRATDualCarrier()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getVoiceNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceRoaming()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->getVoiceRoaming()Z

    move-result v0

    return v0
.end method

.method public isDataSearching()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isDataSearching()Z

    move-result v0

    return v0
.end method

.method public isVoiceSearching()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0}, Lcom/lge/telephony/LGServiceStateImpl;->isVoiceSearching()Z

    move-result v0

    return v0
.end method

.method public setCheck64QAM(I)V
    .registers 3
    .param p1, "Check64QAM"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setCheck64QAM(I)V

    .line 325
    return-void
.end method

.method public setDataNetworkName(Ljava/lang/String;)V
    .registers 3
    .param p1, "dataNetworkName"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataNetworkName(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setDataRoaming(Z)V
    .registers 3
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataRoaming(Z)V

    .line 119
    return-void
.end method

.method public setDataSearching(Z)V
    .registers 3
    .param p1, "isDataSearching"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setDataSearching(Z)V

    .line 202
    return-void
.end method

.method public setRATDualCarrier(I)V
    .registers 3
    .param p1, "isRATDualCarrier"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setRATDualCarrier(I)V

    .line 339
    return-void
.end method

.method public setServiceState(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "servicestate"    # Landroid/telephony/ServiceState;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getLGServiceStateImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/telephony/LGServiceStateImpl;

    iput-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    .line 77
    return-void
.end method

.method public setVoiceNetworkName(Ljava/lang/String;)V
    .registers 3
    .param p1, "voiceNetworkName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceNetworkName(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .registers 3
    .param p1, "voiceRoaming"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceRoaming(Z)V

    .line 108
    return-void
.end method

.method public setVoiceSearching(Z)V
    .registers 3
    .param p1, "isVoiceSearching"    # Z

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lge/telephony/LGServiceState;->mLGServiceStateImpl:Lcom/lge/telephony/LGServiceStateImpl;

    invoke-virtual {v0, p1}, Lcom/lge/telephony/LGServiceStateImpl;->setVoiceSearching(Z)V

    .line 193
    return-void
.end method
