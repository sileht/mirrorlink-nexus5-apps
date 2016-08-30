.class Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationListener"
.end annotation


# instance fields
.field private dontUpdatePosition:Z

.field private dontUpdateSize:Z

.field private mDownX:I

.field private mDownY:I

.field private mRunningAnimation:Z

.field private padding:Landroid/graphics/Rect;

.field private ret:[I

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3304
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3307
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    .line 3308
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    .line 3312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->ret:[I

    .line 3313
    # getter for: Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;
    invoke-static {p1}, Lcom/lge/app/floating/FloatingWindow;->access$3(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->padding:Landroid/graphics/Rect;

    .line 3314
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mRunningAnimation:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FloatingWindow;Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;)V
    .registers 3

    .prologue
    .line 3304
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    return-void
.end method


# virtual methods
.method public checkWhatToUpdate(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    .line 3318
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startX:I

    .line 3319
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startY:I

    .line 3320
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_17

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_17

    .line 3321
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    .line 3323
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_2d

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_2d

    .line 3324
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    .line 3326
    :cond_2d
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->prepareMoveWindow()V

    .line 3327
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startX:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/app/floating/FloatingWindow;->convertViewPositionToWindowPosition(Landroid/view/View;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->ret:[I

    .line 3328
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->ret:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mDownX:I

    .line 3329
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->ret:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mDownY:I

    .line 3330
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3372
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mRunningAnimation:Z

    if-eqz v2, :cond_41

    .line 3373
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3374
    .local v0, "frameParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 3375
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3376
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3378
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 3379
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 3380
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mRunningAnimation:Z

    .line 3383
    .end local v0    # "frameParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_41
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 3384
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->finishMoveWindow()V

    .line 3385
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3359
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    if-nez v2, :cond_49

    .line 3360
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mRunningAnimation:Z

    .line 3361
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 3362
    .local v0, "frameParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 3363
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3364
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3365
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 3366
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 3368
    .end local v0    # "frameParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_49
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 3334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 3335
    .local v7, "r":Landroid/graphics/Rect;
    if-nez v7, :cond_12

    .line 3336
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v0

    .line 3337
    const-string v1, "Cannot onAnimationUpdate in BounceAnimationListener - Fail to getAnimatedValue"

    .line 3336
    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    :cond_11
    :goto_11
    return-void

    .line 3340
    :cond_12
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdatePosition:Z

    if-nez v0, :cond_5d

    .line 3341
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startX:I

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->startY:I

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mDownX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->mDownY:I

    sub-int/2addr v6, v8

    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->padding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I
    invoke-static {v8}, Lcom/lge/app/floating/FloatingWindow;->access$4(Lcom/lge/app/floating/FloatingWindow;)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Lcom/lge/app/floating/FloatingWindow;->moveWindow(IIIIFF)V

    .line 3342
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v0, :cond_5d

    .line 3343
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    .line 3344
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoving(Lcom/lge/app/floating/FloatingWindow;II)V

    .line 3347
    :cond_5d
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->dontUpdateSize:Z

    if-nez v0, :cond_11

    .line 3348
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/app/floating/FloatingWindow;->setSize(II)V

    .line 3349
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v0, :cond_11

    .line 3350
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->this$0:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 3351
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 3350
    invoke-interface {v0, v1, v2, v3}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onResizing(Lcom/lge/app/floating/FloatingWindow;II)V

    goto :goto_11
.end method
