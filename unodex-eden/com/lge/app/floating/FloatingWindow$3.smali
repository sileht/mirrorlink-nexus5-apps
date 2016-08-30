.class Lcom/lge/app/floating/FloatingWindow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow;->enterLowProfile(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$3;->this$0:Lcom/lge/app/floating/FloatingWindow;

    .line 2840
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2850
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LowProfile onAnimationEnd"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$3;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow;->access$6(Lcom/lge/app/floating/FloatingWindow;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_20

    .line 2844
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$3;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow;->access$7(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/ITitleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/app/floating/ITitleView;->activateOpacitySlider(Z)V

    .line 2845
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$3;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow;->access$7(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/ITitleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/app/floating/ITitleView;->setTouchOnSliderIgnored(Z)V

    .line 2847
    :cond_20
    return-void
.end method
