.class public Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;
.super Landroid/app/Service;
.source "EventClusteringService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

.field private controller:Lcom/lge/cic/eden/controller/EventServiceController;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    sget-object v0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 20
    iput-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    .line 21
    iput-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    .line 16
    return-void
.end method

.method private prepareIfNeeded()V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    if-nez v0, :cond_f

    .line 40
    new-instance v0, Lcom/lge/cic/eden/controller/EventServiceController;

    invoke-virtual {p0}, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lge/cic/eden/controller/EventServiceController;-><init>(Landroid/content/Context;Landroid/app/Service;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    .line 42
    :cond_f
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    if-nez v0, :cond_20

    .line 43
    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    invoke-virtual {p0}, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/controller/EventServiceController;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    .line 45
    :cond_20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "onBind()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "onCreate()"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->create(Landroid/content/ContentResolver;)V

    .line 31
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "regist asset loader"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/lge/cic/eden/assets/AssetLoader;

    invoke-virtual {p0}, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/assets/AssetLoader;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "assetLoader":Lcom/lge/cic/eden/assets/AssetLoader;
    invoke-virtual {v0}, Lcom/lge/cic/eden/assets/AssetLoader;->load()Z

    .line 35
    invoke-direct {p0}, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->prepareIfNeeded()V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    invoke-virtual {v0}, Lcom/lge/cic/eden/controller/EventServiceController;->destroy()V

    .line 54
    :cond_11
    iput-object v2, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    .line 55
    iput-object v2, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    .line 57
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "  complete destroy"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 80
    if-eqz p1, :cond_33

    .line 81
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->controller:Lcom/lge/cic/eden/controller/EventServiceController;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    if-eqz v1, :cond_2b

    .line 83
    :try_start_a
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    invoke-virtual {v1, p1}, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->onCommand(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_11

    .line 95
    :goto_f
    const/4 v1, 0x2

    return v1

    .line 84
    :catch_11
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_f

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2b
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "EventServiceController does not exist!(= null)"

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_f

    .line 92
    :cond_33
    iget-object v1, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v2, "intent is null."

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onTrimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTrimMemory() level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/cic/eden/service/eventclustering/EventClusteringService;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v1, "onUnbind()"

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
