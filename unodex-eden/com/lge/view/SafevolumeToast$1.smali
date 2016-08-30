.class Lcom/lge/view/SafevolumeToast$1;
.super Landroid/os/Handler;
.source "SafevolumeToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/SafevolumeToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/view/SafevolumeToast;


# direct methods
.method constructor <init>(Lcom/lge/view/SafevolumeToast;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x411

    const/16 v8, 0x57

    const/4 v1, -0x2

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16a

    .line 102
    :cond_b
    :goto_b
    return-void

    .line 54
    :pswitch_c
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 55
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 56
    .local v6, "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_2d

    .line 57
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$1(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_2d
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mPosition:I
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$3(Lcom/lge/view/SafevolumeToast;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$4(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$5(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$5(Lcom/lge/view/SafevolumeToast;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mDelay:J
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$6(Lcom/lge/view/SafevolumeToast;)J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 67
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_71
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$7(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$layout;->safevolume_toast:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/view/SafevolumeToast;->access$8(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v7, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 73
    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mIsExpanded:Z
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$9(Lcom/lge/view/SafevolumeToast;)Z

    move-result v2

    if-eqz v2, :cond_128

    const/16 v3, 0x7e8

    .line 74
    :goto_a3
    const/16 v4, 0x18

    .line 75
    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 70
    invoke-static {v7, v0}, Lcom/lge/view/SafevolumeToast;->access$10(Lcom/lge/view/SafevolumeToast;Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "SafeVolumeToast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 78
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 79
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mPosition:I
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$3(Lcom/lge/view/SafevolumeToast;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$4(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastLP:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/lge/view/SafevolumeToast;->access$2(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 82
    .restart local v6    # "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_107

    .line 83
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$1(Lcom/lge/view/SafevolumeToast;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_107
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$7(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    iget-object v3, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v3, v3, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v1, 0x1

    # invokes: Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/view/SafevolumeToast;->access$11(Lcom/lge/view/SafevolumeToast;Z)V

    goto/16 :goto_b

    .line 73
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_128
    const/16 v3, 0x7d5

    goto/16 :goto_a3

    .line 91
    :pswitch_12c
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$7(Lcom/lge/view/SafevolumeToast;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    iget-object v3, v3, Lcom/lge/view/SafevolumeToast;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->loadAnim(Landroid/content/Context;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    const/4 v1, 0x0

    # invokes: Lcom/lge/view/SafevolumeToast;->setToastVisibility(Z)V
    invoke-static {v0, v1}, Lcom/lge/view/SafevolumeToast;->access$11(Lcom/lge/view/SafevolumeToast;Z)V

    .line 94
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/lge/view/SafevolumeToast;->access$4(Lcom/lge/view/SafevolumeToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    # getter for: Lcom/lge/view/SafevolumeToast;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/lge/view/SafevolumeToast;->access$0(Lcom/lge/view/SafevolumeToast;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/lge/view/SafevolumeToast$1;->this$0:Lcom/lge/view/SafevolumeToast;

    invoke-static {v0, v5}, Lcom/lge/view/SafevolumeToast;->access$8(Lcom/lge/view/SafevolumeToast;Landroid/view/View;)V

    goto/16 :goto_b

    .line 52
    :pswitch_data_16a
    .packed-switch 0x410
        :pswitch_c
        :pswitch_12c
    .end packed-switch
.end method
