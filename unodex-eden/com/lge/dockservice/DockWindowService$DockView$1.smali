.class Lcom/lge/dockservice/DockWindowService$DockView$1;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$DockView;->applyLowProfile(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$DockView;

.field private final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->val$targetView:Landroid/view/View;

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1140
    if-nez p1, :cond_3

    .line 1161
    :goto_2
    return-void

    .line 1143
    :cond_3
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1145
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1146
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1b

    .line 1147
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot onAnimationUpdate - Fail to getAnimatedValue == null"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1150
    :cond_1b
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1152
    :try_start_23
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->access$13(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService;

    move-result-object v3

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->val$targetView:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_2

    :catch_33
    move-exception v3

    .line 1156
    :try_start_34
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView$1;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_2

    .line 1157
    :catch_3e
    move-exception v0

    .line 1158
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
