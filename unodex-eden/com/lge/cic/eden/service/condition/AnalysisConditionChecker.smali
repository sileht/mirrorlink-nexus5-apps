.class public Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;
.super Ljava/lang/Object;
.source "AnalysisConditionChecker.java"


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuccess(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-static {p0}, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->isSuccessBatteryCondition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 17
    sget-object v1, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "low battery"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 28
    :goto_e
    return v0

    .line 21
    :cond_f
    const-string v1, "CN"

    invoke-static {v1}, Lcom/lge/cic/eden/clustering/utils/CountryChecker;->checkTargetCountry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 22
    sget-object v1, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "Check network condition"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->isSuccessNetworkCondition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 24
    sget-object v1, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "network is disconnected"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 28
    :cond_2c
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static isSuccessBatteryCondition(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/lge/cic/eden/service/condition/battery/BatteryChecker;->getBatteryLevel(Landroid/content/Context;)I

    move-result v0

    .line 33
    .local v0, "battery":I
    sget v1, Lcom/lge/cic/eden/service/condition/AnalysisCondition;->MIN_BATTERY:I

    if-ge v0, v1, :cond_a

    .line 34
    const/4 v1, 0x0

    .line 36
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private static isSuccessNetworkCondition(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 42
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method
