.class Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameMoveTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FrameView;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FrameView;)V
    .registers 2

    .prologue
    .line 606
    iput-object p1, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FrameView;Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;)V
    .registers 3

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;-><init>(Lcom/lge/app/floating/FrameView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v0}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->moveOption:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v0}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v0}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-eqz v0, :cond_34

    .line 610
    :cond_2b
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    # getter for: Lcom/lge/app/floating/FrameView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;
    invoke-static {v0}, Lcom/lge/app/floating/FrameView;->access$0(Lcom/lge/app/floating/FrameView;)Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 612
    :cond_34
    const/4 v0, 0x0

    return v0
.end method
