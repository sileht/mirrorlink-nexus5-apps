.class Lcom/lge/app/floating/FloatingWindow$4;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$4;->this$0:Lcom/lge/app/floating/FloatingWindow;

    .line 2854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2858
    .line 2859
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 2858
    check-cast v0, Ljava/lang/Float;

    .line 2861
    .local v0, "animatedValue":Ljava/lang/Float;
    if-eqz v0, :cond_1a

    .line 2862
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2863
    .local v1, "opacity":F
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$4;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2, v1}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 2864
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$4;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->access$7(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/ITitleView;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/app/floating/ITitleView;->update()V

    .line 2866
    .end local v1    # "opacity":F
    :cond_1a
    return-void
.end method
