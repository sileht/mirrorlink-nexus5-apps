.class public Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;
.super Ljava/lang/Object;
.source "WiFiAggregationManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiAggregationService"

.field private static final TAG:Ljava/lang/String; = "WiFiAggregation"

.field private static deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

.field private static mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

.field private static mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .line 37
    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 89
    new-instance v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;)V
    .registers 2
    .param p1, "service"    # Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sput-object p1, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;
    .registers 6

    .prologue
    .line 59
    sget-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    if-nez v3, :cond_37

    .line 61
    const-string v3, "wifiAggregationService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    move-result-object v2

    .line 71
    .local v2, "service":Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;
    if-eqz v2, :cond_1a

    .line 72
    :try_start_10
    invoke-interface {v2}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_3a

    .line 79
    :cond_1a
    :goto_1a
    new-instance v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    invoke-direct {v3, v2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;-><init>(Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;)V

    sput-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 80
    const-string v3, "WiFiAggregation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Get a service instance in WiFiAggregationManager() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_37
    sget-object v3, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    return-object v3

    .line 74
    :catch_3a
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method


# virtual methods
.method public processingAggregation()V
    .registers 4

    .prologue
    .line 99
    const-string v0, "WiFiAggregation"

    const-string v1, "processingAggregation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    if-nez v0, :cond_3d

    .line 102
    const-string v0, "WiFiAggregation"

    const-string v1, "null == mWiFiAggregationService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 104
    invoke-static {}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->getInstance()Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationManager:Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;

    .line 105
    const-string v0, "WiFiAggregation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recheck mWiFiAggregationService : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    if-nez v0, :cond_3d

    .line 107
    const-string v0, "WiFiAggregation"

    const-string v1, "null == mWiFiAggregationService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_3c
    return-void

    .line 113
    :cond_3d
    :try_start_3d
    sget-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-interface {v0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->init()Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_51

    .line 120
    :try_start_42
    sget-object v0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationManager;->mWiFiAggregationService:Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;

    invoke-interface {v0}, Lcom/lge/wifi/impl/aggregation/IWiFiAggregation;->enable()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_3c

    .line 122
    :catch_48
    move-exception v0

    const-string v0, "WiFiAggregation"

    const-string v1, "Could not start aggregation in processingAggregation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 115
    :catch_51
    move-exception v0

    const-string v0, "WiFiAggregation"

    const-string v1, "Could not init aggregation in processingAggregation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
