.class Lcom/lge/dockservice/DockWindowService$2;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$2;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$2;->val$v:Landroid/view/View;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$2;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$2;->val$v:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_17

    .line 852
    :goto_b
    return-void

    .line 848
    :catch_c
    move-exception v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BadTokenException"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 849
    :catch_17
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in removing view : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
