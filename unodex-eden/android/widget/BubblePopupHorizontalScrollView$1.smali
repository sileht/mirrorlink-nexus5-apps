.class Landroid/widget/BubblePopupHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "BubblePopupHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BubblePopupHorizontalScrollView;


# direct methods
.method constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView$1;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView$1;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/BubblePopupHorizontalScrollView;->access$9(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    return-void
.end method
