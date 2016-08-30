.class Lcom/lge/dockservice/DockWindowManager$1;
.super Ljava/lang/Object;
.source "DockWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowManager;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 43
    const-string v0, "DockWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected: service="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    invoke-static {p2}, Lcom/lge/dockservice/IDockWindowService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IDockWindowService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/dockservice/DockWindowManager;->access$0(Lcom/lge/dockservice/DockWindowManager;Lcom/lge/dockservice/IDockWindowService;)V

    .line 48
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    # getter for: Lcom/lge/dockservice/DockWindowManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowManager;->access$1(Lcom/lge/dockservice/DockWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    # getter for: Lcom/lge/dockservice/DockWindowManager;->pendingDockX:I
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowManager;->access$2(Lcom/lge/dockservice/DockWindowManager;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    # getter for: Lcom/lge/dockservice/DockWindowManager;->pendingDockY:I
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowManager;->access$3(Lcom/lge/dockservice/DockWindowManager;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    # getter for: Lcom/lge/dockservice/DockWindowManager;->pendingDockVisible:Z
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowManager;->access$4(Lcom/lge/dockservice/DockWindowManager;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/dockservice/DockWindowManager;->initDock(Ljava/lang/String;IIZ)V

    .line 49
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    invoke-static {v0, v5}, Lcom/lge/dockservice/DockWindowManager;->access$5(Lcom/lge/dockservice/DockWindowManager;I)V

    .line 50
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    invoke-static {v0, v5}, Lcom/lge/dockservice/DockWindowManager;->access$6(Lcom/lge/dockservice/DockWindowManager;I)V

    .line 51
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    invoke-static {v0, v5}, Lcom/lge/dockservice/DockWindowManager;->access$7(Lcom/lge/dockservice/DockWindowManager;Z)V

    .line 52
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 55
    const-string v0, "DockWindowManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowManager$1;->this$0:Lcom/lge/dockservice/DockWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/dockservice/DockWindowManager;->access$0(Lcom/lge/dockservice/DockWindowManager;Lcom/lge/dockservice/IDockWindowService;)V

    .line 57
    return-void
.end method
