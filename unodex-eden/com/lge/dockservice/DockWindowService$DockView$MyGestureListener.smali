.class Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService$DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$DockView;


# direct methods
.method private constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;)V
    .registers 2

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;)V
    .registers 3

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1722
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1718
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1710
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSingleTapUp - undockBySingleTabUp"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;->this$1:Lcom/lge/dockservice/DockWindowService$DockView;

    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->undockBySingleTabUp()V

    .line 1712
    const/4 v0, 0x1

    return v0
.end method
