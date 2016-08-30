.class public Lcom/lge/systemservice/core/DeathMonitor;
.super Ljava/lang/Object;
.source "DeathMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeathMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/lge/systemservice/core/IDeathMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lge/systemservice/core/DeathMonitor;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/DeathMonitor;Lcom/lge/systemservice/core/IDeathMonitor;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IDeathMonitor;
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    if-nez v0, :cond_23

    .line 34
    const-string v0, "deathmonitor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IDeathMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    .line 35
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    if-eqz v0, :cond_23

    .line 37
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IDeathMonitor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/DeathMonitor$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/DeathMonitor$1;-><init>(Lcom/lge/systemservice/core/DeathMonitor;)V

    .line 40
    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 44
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    return-object v0

    .line 41
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitor;->mService:Lcom/lge/systemservice/core/IDeathMonitor;

    goto :goto_23
.end method


# virtual methods
.method public register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "res"    # Lcom/lge/systemservice/core/DeathMonitorResponse;

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/DeathMonitor;->getService()Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v0

    .line 57
    .local v0, "service":Lcom/lge/systemservice/core/IDeathMonitor;
    if-eqz v0, :cond_9

    .line 58
    invoke-interface {v0, p1, p2}, Lcom/lge/systemservice/core/IDeathMonitor;->register(Landroid/os/IBinder;Lcom/lge/systemservice/core/DeathMonitorResponse;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 63
    .end local v0    # "service":Lcom/lge/systemservice/core/IDeathMonitor;
    :cond_9
    :goto_9
    return-void

    .line 61
    :catch_a
    move-exception v1

    const-string v1, "DeathMonitor"

    const-string v2, "register() : exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public unregister(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "ret":Z
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/DeathMonitor;->getService()Lcom/lge/systemservice/core/IDeathMonitor;

    move-result-object v1

    .line 76
    .local v1, "service":Lcom/lge/systemservice/core/IDeathMonitor;
    if-eqz v1, :cond_b

    .line 77
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IDeathMonitor;->unregister(Landroid/os/IBinder;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 82
    .end local v1    # "service":Lcom/lge/systemservice/core/IDeathMonitor;
    :cond_b
    :goto_b
    return v0

    .line 80
    :catch_c
    move-exception v2

    const-string v2, "DeathMonitor"

    const-string v3, "unregister() : exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
