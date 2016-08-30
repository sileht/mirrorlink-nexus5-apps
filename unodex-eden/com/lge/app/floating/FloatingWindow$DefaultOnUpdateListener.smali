.class public Lcom/lge/app/floating/FloatingWindow$DefaultOnUpdateListener;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;
.implements Lcom/lge/app/floating/FloatingWindow$OnUpdateListener2;
.implements Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;
.implements Lcom/lge/app/floating/FloatingWindow$OnDockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultOnUpdateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseRequested(Lcom/lge/app/floating/FloatingWindow;)Z
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public onClosing(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 680
    return-void
.end method

.method public onDockStateChanged(Lcom/lge/app/floating/FloatingWindow;Z)V
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "docked"    # Z

    .prologue
    .line 708
    return-void
.end method

.method public onEnteringLowProfileMode(Lcom/lge/app/floating/FloatingWindow;Z)Z
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "hide"    # Z

    .prologue
    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public onExitingLowProfileMode(Lcom/lge/app/floating/FloatingWindow;Z)Z
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "hide"    # Z

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public onMoveCanceled(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 657
    return-void
.end method

.method public onMoveFinished(Lcom/lge/app/floating/FloatingWindow;II)V
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 653
    return-void
.end method

.method public onMoveStarted(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 645
    return-void
.end method

.method public onMoveToTop(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 684
    return-void
.end method

.method public onMoving(Lcom/lge/app/floating/FloatingWindow;II)V
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 649
    return-void
.end method

.method public onOverlayStateChanged(Lcom/lge/app/floating/FloatingWindow;Z)V
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "overlay"    # Z

    .prologue
    .line 704
    return-void
.end method

.method public onResizeCanceled(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 641
    return-void
.end method

.method public onResizeFinished(Lcom/lge/app/floating/FloatingWindow;II)V
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onResizeStarted(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 618
    return-void
.end method

.method public onResizing(Lcom/lge/app/floating/FloatingWindow;II)V
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 622
    return-void
.end method

.method public onSwitchFullRequested(Lcom/lge/app/floating/FloatingWindow;)Z
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public onSwitchingFull(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 666
    return-void
.end method

.method public onSwitchingFullByApp()V
    .registers 1

    .prologue
    .line 712
    return-void
.end method

.method public onSwitchingMinimized(Lcom/lge/app/floating/FloatingWindow;Z)V
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "minimized"    # Z

    .prologue
    .line 671
    return-void
.end method

.method public onTitleViewTouch(Lcom/lge/app/floating/FloatingWindow;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 700
    return-void
.end method
