.class Lcom/lge/app/floating/TitleView$TitleViewTouchListener;
.super Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/TitleView;


# direct methods
.method public constructor <init>(Lcom/lge/app/floating/TitleView;)V
    .registers 3

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;->this$0:Lcom/lge/app/floating/TitleView;

    .line 464
    invoke-virtual {p1}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    .line 465
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_c

    .line 470
    invoke-super {p0, p1, p2}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    .line 473
    :cond_c
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;->this$0:Lcom/lge/app/floating/TitleView;

    # getter for: Lcom/lge/app/floating/TitleView;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/lge/app/floating/TitleView;->access$6(Lcom/lge/app/floating/TitleView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
