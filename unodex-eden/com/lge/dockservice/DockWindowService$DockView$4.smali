.class Lcom/lge/dockservice/DockWindowService$DockView$4;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$DockView;

.field private final synthetic val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .line 1586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .registers 3

    .prologue
    .line 1628
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideTo animation cancelled"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView$4;->onAnimationEnd()V

    .line 1630
    return-void
.end method

.method public onAnimationEnd()V
    .registers 4

    .prologue
    .line 1616
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slideTo animation ended"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1618
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1619
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1620
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$13(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockAxis(Lcom/lge/dockservice/DockWindowService$DockView;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$10(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 1621
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$13(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 1622
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v1, :cond_3a

    .line 1623
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v1}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationEnd()V

    .line 1625
    :cond_3a
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 1589
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slideTo animation started"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v0, :cond_12

    .line 1591
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v0}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationStart()V

    .line 1593
    :cond_12
    return-void
.end method

.method public onAnimationUpdate(II)V
    .registers 8
    .param p1, "currentX"    # I
    .param p2, "currentY"    # I

    .prologue
    .line 1596
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1597
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1598
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1600
    :try_start_c
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$13(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v2

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_25

    .line 1610
    :goto_1b
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    if-eqz v2, :cond_24

    .line 1611
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->val$animatorListener:Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    invoke-interface {v2, p2, p2}, Lcom/lge/dockservice/TransitionAnimator$UpdateListener;->onAnimationUpdate(II)V

    .line 1613
    :cond_24
    return-void

    :catch_25
    move-exception v2

    .line 1604
    :try_start_26
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView$4;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$7(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/TransitionAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->cancel()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_1b

    .line 1606
    :catch_30
    move-exception v0

    .line 1607
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
