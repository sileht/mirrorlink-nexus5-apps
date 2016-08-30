.class Lcom/lge/dockservice/DockWindowService$1$3;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->updateIconImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field private final synthetic val$icon:Landroid/graphics/Bitmap;

.field private final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$3;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$1$3;->val$icon:Landroid/graphics/Bitmap;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$3;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    # getter for: Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$1;->access$0(Lcom/lge/dockservice/DockWindowService$1;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$3;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 330
    .local v0, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v0, :cond_1c

    .line 331
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$3;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/dockservice/DockWindowService$DockView;->updateDockIconImage(Landroid/graphics/Bitmap;)V

    .line 332
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->postInvalidate()V

    .line 334
    :cond_1c
    return-void
.end method
