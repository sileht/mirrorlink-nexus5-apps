.class Lcom/lge/app/floating/FloatingWindow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FloatingWindow;->exitLowProfile()V
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
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$5;->this$0:Lcom/lge/app/floating/FloatingWindow;

    .line 2944
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2947
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "overlay to mAlphaSavedForLowProfile = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2948
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$5;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->access$6(Lcom/lge/app/floating/FloatingWindow;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2947
    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$5;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow;->access$6(Lcom/lge/app/floating/FloatingWindow;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37

    .line 2950
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$5;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 2951
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$5;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;
    invoke-static {v0}, Lcom/lge/app/floating/FloatingWindow;->access$7(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/ITitleView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/app/floating/ITitleView;->activateOpacitySlider(Z)V

    .line 2953
    :cond_37
    return-void
.end method
