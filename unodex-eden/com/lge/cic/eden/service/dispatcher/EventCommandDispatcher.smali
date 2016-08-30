.class public Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;
.super Ljava/lang/Object;
.source "EventCommandDispatcher.java"

# interfaces
.implements Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;


# instance fields
.field private context:Landroid/content/Context;

.field private eventServiceController:Lcom/lge/cic/eden/controller/EventServiceController;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/controller/EventServiceController;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "eventServiceController"    # Lcom/lge/cic/eden/controller/EventServiceController;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->context:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->eventServiceController:Lcom/lge/cic/eden/controller/EventServiceController;

    .line 20
    return-void
.end method


# virtual methods
.method public onCommand(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 24
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCommand(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 25
    if-eqz p1, :cond_77

    .line 26
    const-string v5, "MSG_TYPE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "msgType":Ljava/lang/String;
    if-nez v0, :cond_28

    .line 28
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "msgType is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_28
    invoke-static {v0}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;->check(Ljava/lang/String;)Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    move-result-object v4

    .line 32
    .local v4, "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    sget-object v5, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    invoke-virtual {v5, v4}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 33
    const-string v5, "ManualAnalysis"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 34
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->eventServiceController:Lcom/lge/cic/eden/controller/EventServiceController;

    if-eqz v5, :cond_6e

    .line 35
    const-string v5, "REQUEST_ID"

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 36
    .local v2, "requestId":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_5f

    .line 37
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Wrong request id : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_5f
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->eventServiceController:Lcom/lge/cic/eden/controller/EventServiceController;

    invoke-virtual {v5, v2, v3}, Lcom/lge/cic/eden/controller/EventServiceController;->analyzeAsync(J)Z

    move-result v1

    .line 41
    .local v1, "status":Z
    if-nez v1, :cond_6e

    .line 42
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "event clustering service is working"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 54
    .end local v0    # "msgType":Ljava/lang/String;
    .end local v1    # "status":Z
    .end local v2    # "requestId":J
    .end local v4    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_6e
    :goto_6e
    return-void

    .line 49
    .restart local v0    # "msgType":Ljava/lang/String;
    .restart local v4    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_6f
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "msgType is wrong!"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6e

    .line 52
    .end local v0    # "msgType":Ljava/lang/String;
    .end local v4    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_77
    iget-object v5, p0, Lcom/lge/cic/eden/service/dispatcher/EventCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v6, "intent is null!"

    invoke-virtual {v5, v6}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6e
.end method
