.class Lcom/lge/app/floating/FrameView$1;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/app/floating/FrameView;->updateResizeHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FrameView;

.field private final synthetic val$newVis:I


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FrameView;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/app/floating/FrameView$1;->this$0:Lcom/lge/app/floating/FrameView;

    iput p2, p0, Lcom/lge/app/floating/FrameView$1;->val$newVis:I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$1;->this$0:Lcom/lge/app/floating/FrameView;

    # getter for: Lcom/lge/app/floating/FrameView;->mResizeHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/app/floating/FrameView;->access$1(Lcom/lge/app/floating/FrameView;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lge/app/floating/FrameView$1;->val$newVis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 251
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$1;->this$0:Lcom/lge/app/floating/FrameView;

    # getter for: Lcom/lge/app/floating/FrameView;->mResizeHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/app/floating/FrameView;->access$1(Lcom/lge/app/floating/FrameView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    return-void
.end method
