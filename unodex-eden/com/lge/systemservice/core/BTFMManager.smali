.class public Lcom/lge/systemservice/core/BTFMManager;
.super Ljava/lang/Object;
.source "BTFMManager.java"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "BTFM"

.field private static final TAG:Ljava/lang/String; = "BTFMManager"

.field private static final TITLE:Ljava/lang/String; = "BTFMManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IBTFMManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/BTFMManager;Lcom/lge/systemservice/core/IBTFMManager;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IBTFMManager;
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    if-nez v0, :cond_23

    .line 32
    const-string v0, "BTFM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IBTFMManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    .line 33
    iget-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    if-eqz v0, :cond_23

    .line 35
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IBTFMManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/BTFMManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/BTFMManager$1;-><init>(Lcom/lge/systemservice/core/BTFMManager;)V

    .line 38
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 42
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    return-object v0

    .line 39
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/BTFMManager;->mService:Lcom/lge/systemservice/core/IBTFMManager;

    goto :goto_23
.end method


# virtual methods
.method public Finalize()V
    .registers 4

    .prologue
    .line 82
    :try_start_0
    const-string v1, "BTFMManager"

    const-string v2, "[BTFMManager] Finalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/lge/systemservice/core/BTFMManager;->getService()Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBTFMManager;->Finalize()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 91
    :goto_e
    return-void

    .line 85
    :catch_f
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public Initialize()V
    .registers 4

    .prologue
    .line 60
    :try_start_0
    const-string v1, "BTFMManager"

    const-string v2, "[BTFMManager] nitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/lge/systemservice/core/BTFMManager;->getService()Lcom/lge/systemservice/core/IBTFMManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBTFMManager;->Initialize()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 69
    :goto_e
    return-void

    .line 63
    :catch_f
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method
