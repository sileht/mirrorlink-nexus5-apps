.class Lcom/lge/mrg/service/ActionManager$1;
.super Ljava/lang/Object;
.source "ActionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mrg/service/ActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mrg/service/ActionManager;


# direct methods
.method constructor <init>(Lcom/lge/mrg/service/ActionManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/mrg/service/ActionManager$1;->this$0:Lcom/lge/mrg/service/ActionManager;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager$1;->this$0:Lcom/lge/mrg/service/ActionManager;

    invoke-static {p2}, Lcom/lge/mrg/service/IActionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/mrg/service/IActionManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mrg/service/ActionManager;->access$0(Lcom/lge/mrg/service/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V

    .line 259
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager$1;->this$0:Lcom/lge/mrg/service/ActionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/mrg/service/ActionManager;->access$0(Lcom/lge/mrg/service/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V

    .line 254
    return-void
.end method
