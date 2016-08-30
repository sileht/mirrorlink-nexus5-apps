.class public Lcom/lge/systemservice/core/WatchNetStorageManager;
.super Ljava/lang/Object;
.source "WatchNetStorageManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.nfs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/systemservice/core/WatchNetStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/WatchNetStorageManager;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/WatchNetStorageManager;Lcom/lge/systemservice/core/IWatchNetStorageManager;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IWatchNetStorageManager;
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    if-nez v0, :cond_23

    .line 26
    const-string v0, "watchnetstorage"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IWatchNetStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWatchNetStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    .line 27
    iget-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    if-eqz v0, :cond_23

    .line 29
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IWatchNetStorageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/WatchNetStorageManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/WatchNetStorageManager$1;-><init>(Lcom/lge/systemservice/core/WatchNetStorageManager;)V

    .line 32
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 36
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    return-object v0

    .line 33
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/WatchNetStorageManager;->mService:Lcom/lge/systemservice/core/IWatchNetStorageManager;

    goto :goto_23
.end method


# virtual methods
.method public requestMediaScanFile(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/WatchNetStorageManager;->getService()Lcom/lge/systemservice/core/IWatchNetStorageManager;

    move-result-object v1

    .line 56
    .local v1, "service":Lcom/lge/systemservice/core/IWatchNetStorageManager;
    if-eqz v1, :cond_20

    .line 57
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IWatchNetStorageManager;->requestMediaScanFile(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 62
    .end local v1    # "service":Lcom/lge/systemservice/core/IWatchNetStorageManager;
    :goto_a
    return v2

    .line 59
    :catch_b
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/WatchNetStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to request scan file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v2, 0x0

    goto :goto_a
.end method
