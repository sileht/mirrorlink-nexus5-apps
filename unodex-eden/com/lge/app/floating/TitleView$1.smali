.class Lcom/lge/app/floating/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/TitleView;->activateOpacitySlider(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/TitleView;

.field private final synthetic val$flag:Z

.field private final synthetic val$withAnimation:Z


# direct methods
.method constructor <init>(Lcom/lge/app/floating/TitleView;ZZ)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    iput-boolean p2, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    iput-boolean p3, p0, Lcom/lge/app/floating/TitleView$1;->val$withAnimation:Z

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/TitleView$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 317
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z
    invoke-static {v0}, Lcom/lge/app/floating/TitleView;->access$8(Lcom/lge/app/floating/TitleView;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    if-eqz v0, :cond_38

    .line 306
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    .line 307
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mReservedProgress:I
    invoke-static {v1}, Lcom/lge/app/floating/TitleView;->access$9(Lcom/lge/app/floating/TitleView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mOpacitySteps:I
    invoke-static {v2}, Lcom/lge/app/floating/TitleView;->access$10(Lcom/lge/app/floating/TitleView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 308
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 310
    :cond_38
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-static {v0, v3}, Lcom/lge/app/floating/TitleView;->access$7(Lcom/lge/app/floating/TitleView;Z)V

    .line 311
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-static {v0, v3}, Lcom/lge/app/floating/TitleView;->access$11(Lcom/lge/app/floating/TitleView;Z)V

    .line 312
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/lge/app/floating/TitleView;->access$12(Lcom/lge/app/floating/TitleView;I)V

    .line 313
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    iget-boolean v1, p0, Lcom/lge/app/floating/TitleView$1;->val$flag:Z

    invoke-static {v0, v1}, Lcom/lge/app/floating/TitleView;->access$7(Lcom/lge/app/floating/TitleView;Z)V

    .line 299
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView$1;->val$withAnimation:Z

    if-nez v0, :cond_10

    .line 300
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$1;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/TitleView;->calSliderWidth(Landroid/animation/Animator;)V

    .line 302
    :cond_10
    return-void
.end method
