.class public Lcom/lge/telephony/LGNetworkMonitor;
.super Ljava/lang/Object;
.source "LGNetworkMonitor.java"

# interfaces
.implements Lcom/lge/telephony/ILGNetworkMonitor;
.implements Lcom/lguplus/mobiledm/UplusMobileDmService;


# static fields
.field public static final OPERATORDM_KT_SERVICE:Ljava/lang/String; = "debuginfo_service"

.field public static final OPERATORDM_SERVICE:Ljava/lang/String; = "operator.dm"

.field private static final TAG:Ljava/lang/String; = "LGNetworkMonitor"

.field private static sInstance:Lcom/lge/telephony/LGNetworkMonitor;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/LGNetworkMonitor;->sInstance:Lcom/lge/telephony/LGNetworkMonitor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_9

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/telephony/LGNetworkMonitor;->mContext:Landroid/content/Context;

    .line 55
    :goto_8
    return-void

    .line 49
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_12

    .line 51
    iput-object v0, p0, Lcom/lge/telephony/LGNetworkMonitor;->mContext:Landroid/content/Context;

    goto :goto_8

    .line 53
    :cond_12
    iput-object p1, p0, Lcom/lge/telephony/LGNetworkMonitor;->mContext:Landroid/content/Context;

    goto :goto_8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/telephony/LGNetworkMonitor;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/lge/telephony/LGNetworkMonitor;->sInstance:Lcom/lge/telephony/LGNetworkMonitor;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/lge/telephony/LGNetworkMonitor;

    invoke-direct {v0, p0}, Lcom/lge/telephony/LGNetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/LGNetworkMonitor;->sInstance:Lcom/lge/telephony/LGNetworkMonitor;

    .line 64
    :cond_b
    sget-object v0, Lcom/lge/telephony/LGNetworkMonitor;->sInstance:Lcom/lge/telephony/LGNetworkMonitor;

    return-object v0
.end method

.method private getProvider()Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;
    .registers 2

    .prologue
    .line 69
    const-string v0, "operator.dm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 75
    const-string v1, "LGNetworkMonitor"

    const-string v2, "isEnabled()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_8
    invoke-direct {p0}, Lcom/lge/telephony/LGNetworkMonitor;->getProvider()Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;->isEnabled()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    .line 81
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10

    .line 79
    :catch_13
    move-exception v1

    goto :goto_10
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "band"    # J

    .prologue
    .line 100
    const-string v0, "LGNetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNetworkBand band="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_14
    invoke-direct {p0}, Lcom/lge/telephony/LGNetworkMonitor;->getProvider()Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lge/internal/telephony/ILGNetworkMonitorProviderEx;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1b} :catch_25

    .line 110
    :goto_1b
    return-void

    .line 104
    :catch_1c
    move-exception v0

    const-string v0, "LGNetworkMonitor"

    const-string v1, "setNetworkBand RE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 107
    :catch_25
    move-exception v0

    const-string v0, "LGNetworkMonitor"

    const-string v1, "setNetworkBand NPE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method
