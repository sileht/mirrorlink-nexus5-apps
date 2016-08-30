.class final Lcom/lge/cic/eden/service/EdenService$ServiceHandler;
.super Landroid/os/Handler;
.source "EdenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/service/EdenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field private commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

.field private edenController:Lcom/lge/cic/eden/controller/EdenController;

.field final synthetic this$0:Lcom/lge/cic/eden/service/EdenService;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/service/EdenService;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object p1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->this$0:Lcom/lge/cic/eden/service/EdenService;

    .line 50
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

    .line 47
    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    .line 51
    iget-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    if-nez v0, :cond_15

    .line 52
    new-instance v0, Lcom/lge/cic/eden/controller/EdenController;

    invoke-direct {v0, p2}, Lcom/lge/cic/eden/controller/EdenController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    .line 55
    :cond_15
    iget-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

    if-nez v0, :cond_22

    .line 56
    new-instance v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;

    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    invoke-direct {v0, p2, v1}, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;-><init>(Landroid/content/Context;Lcom/lge/cic/eden/controller/EdenController;)V

    iput-object v0, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

    .line 58
    :cond_22
    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    if-nez p1, :cond_a

    .line 72
    invoke-static {}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->getInstance()Lcom/lge/cic/eden/service/task/manager/TaskScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/cic/eden/service/task/manager/TaskScheduler;->start()V

    .line 83
    :cond_9
    :goto_9
    return-void

    .line 76
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

    if-eqz v1, :cond_9

    .line 77
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->commandDispatcher:Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;

    invoke-interface {v1, p1}, Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;->onCommand(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_9

    .line 79
    :catch_14
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->this$0:Lcom/lge/cic/eden/service/EdenService;

    # getter for: Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v1}, Lcom/lge/cic/eden/service/EdenService;->access$0(Lcom/lge/cic/eden/service/EdenService;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

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

    goto :goto_9
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->onHandleIntent(Landroid/content/Intent;)V

    .line 63
    sget-object v1, Lcom/lge/cic/eden/service/EdenService;->receivedIntentCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 64
    .local v0, "intentCount":I
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->this$0:Lcom/lge/cic/eden/service/EdenService;

    # getter for: Lcom/lge/cic/eden/service/EdenService;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v1}, Lcom/lge/cic/eden/service/EdenService;->access$0(Lcom/lge/cic/eden/service/EdenService;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandleIntent - receivedIntentCount : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    if-eqz v1, :cond_2e

    .line 66
    iget-object v1, p0, Lcom/lge/cic/eden/service/EdenService$ServiceHandler;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    invoke-virtual {v1}, Lcom/lge/cic/eden/controller/EdenController;->requestStopService()V

    .line 68
    :cond_2e
    return-void
.end method
