.class Lcom/lge/dockservice/DockWindowService$DockView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DockWindowService.java"


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

.field private final synthetic val$endAlpha:F

.field private final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->val$endAlpha:F

    .line 1163
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1170
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->val$endAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 1171
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->val$targetView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    :cond_d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$2;->val$targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    return-void
.end method
