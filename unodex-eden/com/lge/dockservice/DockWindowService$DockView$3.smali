.class Lcom/lge/dockservice/DockWindowService$DockView$3;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$DockView;->undockBySingleTabUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$DockView;

.field private final synthetic val$newPosX:I


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->val$newPosX:I

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .registers 1

    .prologue
    .line 1365
    return-void
.end method

.method public onAnimationEnd()V
    .registers 4

    .prologue
    .line 1350
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideTo animation End. Requesty unDock"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->val$newPosX:I

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v2, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->undock(II)V

    .line 1352
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1357
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1358
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$3;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v1, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    return-void
.end method

.method public onAnimationUpdate(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1362
    return-void
.end method
