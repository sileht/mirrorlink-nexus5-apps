.class public Lcom/lge/systemservice/core/InfoCollectorManager;
.super Ljava/lang/Object;
.source "InfoCollectorManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.infocollector"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/lge/systemservice/core/IInfoCollectorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/systemservice/core/InfoCollectorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/InfoCollectorManager;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IInfoCollectorManager;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/systemservice/core/InfoCollectorManager;->mService:Lcom/lge/systemservice/core/IInfoCollectorManager;

    if-nez v0, :cond_10

    .line 22
    const-string v0, "infocollector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/lge/systemservice/core/IInfoCollectorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IInfoCollectorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/InfoCollectorManager;->mService:Lcom/lge/systemservice/core/IInfoCollectorManager;

    .line 24
    :cond_10
    iget-object v0, p0, Lcom/lge/systemservice/core/InfoCollectorManager;->mService:Lcom/lge/systemservice/core/IInfoCollectorManager;

    return-object v0
.end method


# virtual methods
.method public startInfoCollecting()V
    .registers 5

    .prologue
    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/InfoCollectorManager;->getService()Lcom/lge/systemservice/core/IInfoCollectorManager;

    move-result-object v1

    .line 33
    .local v1, "service":Lcom/lge/systemservice/core/IInfoCollectorManager;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/lge/systemservice/core/IInfoCollectorManager;->startInfoCollecting()V

    .line 34
    :cond_9
    sget-object v2, Lcom/lge/systemservice/core/InfoCollectorManager;->TAG:Ljava/lang/String;

    const-string v3, "Proxy startInfoCollecting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 38
    .end local v1    # "service":Lcom/lge/systemservice/core/IInfoCollectorManager;
    :goto_10
    return-void

    .line 35
    :catch_11
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/InfoCollectorManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
