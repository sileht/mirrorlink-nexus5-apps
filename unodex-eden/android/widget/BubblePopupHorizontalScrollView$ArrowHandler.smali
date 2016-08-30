.class Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
.super Landroid/os/Handler;
.source "BubblePopupHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubblePopupHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BubblePopupHorizontalScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_92

    .line 74
    :cond_7
    :goto_7
    return-void

    .line 48
    :pswitch_8
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$0(Landroid/widget/BubblePopupHorizontalScrollView;Z)V

    .line 49
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->drawArrow()V

    .line 50
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$1(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 51
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$1(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 54
    :pswitch_27
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/BubblePopupHorizontalScrollView;->access$0(Landroid/widget/BubblePopupHorizontalScrollView;Z)V

    .line 55
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$2(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 56
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$3(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 57
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$4(Landroid/widget/BubblePopupHorizontalScrollView;Z)V

    .line 59
    :cond_3f
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$5(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 60
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideRightArrow()V
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$6(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 61
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$7(Landroid/widget/BubblePopupHorizontalScrollView;Z)V

    goto :goto_7

    .line 65
    :pswitch_52
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$8(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 66
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$8(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 67
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    iget-object v2, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v2}, Landroid/widget/BubblePopupHorizontalScrollView;->access$8(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->scrollTo(II)V

    .line 68
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->invalidate()V

    .line 69
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$1(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "updateMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$1(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 46
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8
        :pswitch_27
        :pswitch_52
    .end packed-switch
.end method
