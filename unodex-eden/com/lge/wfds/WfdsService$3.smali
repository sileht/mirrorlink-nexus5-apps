.class Lcom/lge/wfds/WfdsService$3;
.super Landroid/database/ContentObserver;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService;->registerScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    .line 371
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "change"    # Z

    .prologue
    .line 374
    const-string v0, "WfdsService"

    const-string v1, "WifiScanAlwaysAvailable is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsMonitor;->handleWifiScanAlwaysAvailable()V

    .line 376
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$3;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x90100b

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 377
    return-void
.end method
