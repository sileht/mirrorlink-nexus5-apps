.class public Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;
.super Ljava/lang/Object;
.source "FloatingWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTouchListener"
.end annotation


# instance fields
.field private a:Lcom/lge/app/floating/FloatableActivity;

.field mDownX:I

.field mDownY:I

.field private mEnsureTouchDown:Z

.field protected mHasTouchDownConfirmed:Z

.field private mMoveLisntener:Landroid/view/View$OnTouchListener;

.field mTouchDownX:F

.field mTouchDownY:F

.field private w:Lcom/lge/app/floating/FloatingWindow;


# direct methods
.method public constructor <init>(Lcom/lge/app/floating/FloatableActivity;)V
    .registers 4
    .param p1, "activity"    # Lcom/lge/app/floating/FloatableActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    .line 724
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    .line 725
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    .line 730
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    .line 731
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mEnsureTouchDown:Z

    .line 753
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    .line 754
    return-void
.end method

.method public constructor <init>(Lcom/lge/app/floating/FloatingWindow;)V
    .registers 4
    .param p1, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    .line 724
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    .line 725
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    .line 730
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    .line 731
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mEnsureTouchDown:Z

    .line 741
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    .line 742
    iget-object v0, p1, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    .line 743
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    if-eqz v2, :cond_18

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    .line 767
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    if-nez v2, :cond_20

    .line 768
    const/4 v2, 0x0

    .line 882
    :goto_1f
    return v2

    .line 774
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->a:Lcom/lge/app/floating/FloatableActivity;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/lge/app/floating/FloatableActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 775
    const/4 v2, 0x1

    goto :goto_1f

    .line 779
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_37

    .line 780
    const/4 v2, 0x0

    goto :goto_1f

    .line 784
    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eqz v2, :cond_46

    .line 788
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 791
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v11

    .line 794
    .local v11, "layout":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_7c

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    if-eqz v2, :cond_85

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mEnsureTouchDown:Z

    if-nez v2, :cond_85

    .line 796
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 797
    .local v9, "event2":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v9}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 799
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mEnsureTouchDown:Z

    .line 809
    .end local v9    # "event2":Landroid/view/MotionEvent;
    :cond_7c
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_206

    .line 882
    :cond_83
    :goto_83
    const/4 v2, 0x0

    goto :goto_1f

    .line 801
    :cond_85
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_93

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a3

    .line 802
    :cond_93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 803
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mEnsureTouchDown:Z

    goto :goto_7c

    .line 806
    :cond_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_7c

    .line 813
    :pswitch_ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 813
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->convertViewPositionToWindowPosition(Landroid/view/View;II)[I

    move-result-object v13

    .line 815
    .local v13, "ret":[I
    const/4 v2, 0x0

    aget v2, v13, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownX:I

    .line 816
    const/4 v2, 0x1

    aget v2, v13, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownY:I

    .line 817
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownX:F

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownY:F

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->clearLayoutLimit()V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->prepareMoveWindow()V

    goto :goto_83

    .line 824
    .end local v13    # "ret":[I
    :pswitch_f4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    if-nez v2, :cond_104

    .line 825
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore touch move without preceding touch down"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 828
    :cond_104
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v14, 0x64

    cmp-long v2, v2, v14

    if-ltz v2, :cond_83

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->hideIme()V

    .line 834
    iget v5, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 835
    .local v5, "xMove":I
    iget v6, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 836
    .local v6, "yMove":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownX:I

    sub-int v5, v2, v3

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownY:I

    sub-int v6, v2, v3

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    # getter for: Lcom/lge/app/floating/FloatingWindow;->mIsMoving:Z
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->access$1(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v2

    if-nez v2, :cond_15b

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v2, :cond_153

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-interface {v2, v3}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoveStarted(Lcom/lge/app/floating/FloatingWindow;)V

    .line 843
    :cond_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingWindow;->access$2(Lcom/lge/app/floating/FloatingWindow;Z)V

    .line 845
    :cond_15b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownX:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownY:F

    float-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownX:F

    sub-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownY:F

    sub-float/2addr v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/lge/app/floating/FloatingWindow;->moveWindow(IIIIFF)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v2, :cond_83

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget v4, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v7, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-interface {v2, v3, v4, v7}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoving(Lcom/lge/app/floating/FloatingWindow;II)V

    goto/16 :goto_83

    .line 853
    .end local v5    # "xMove":I
    .end local v6    # "yMove":I
    :pswitch_199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    if-nez v2, :cond_1aa

    .line 854
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v2

    .line 855
    const-string v3, "ignore touch up/cancel without preceding touch down"

    .line 854
    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 858
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->finishMoveWindow()V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget v3, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v4, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 860
    .local v12, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v2, v12}, Lcom/lge/app/floating/FloatingWindow;->bounceFloatingWindow(Landroid/graphics/Rect;)Z

    move-result v10

    .line 861
    .local v10, "isBounce":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingWindow;->access$2(Lcom/lge/app/floating/FloatingWindow;Z)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v2, :cond_1ed

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f7

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget v4, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v7, v11, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-interface {v2, v3, v4, v7}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoveFinished(Lcom/lge/app/floating/FloatingWindow;II)V

    .line 872
    :cond_1ed
    :goto_1ed
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/app/floating/FloatingWindow;->sSavedLocation:Z

    .line 873
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mHasTouchDownConfirmed:Z

    goto/16 :goto_83

    .line 866
    :cond_1f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    iget-object v2, v2, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->w:Lcom/lge/app/floating/FloatingWindow;

    invoke-interface {v2, v3}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoveCanceled(Lcom/lge/app/floating/FloatingWindow;)V

    goto :goto_1ed

    .line 809
    nop

    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_199
        :pswitch_f4
        :pswitch_199
    .end packed-switch
.end method

.method public setMoveTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 757
    # getter for: Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/app/floating/FloatingWindow;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setMoveTouchListener"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mMoveLisntener:Landroid/view/View$OnTouchListener;

    .line 759
    return-void
.end method
