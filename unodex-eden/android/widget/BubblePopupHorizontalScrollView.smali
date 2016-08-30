.class public Landroid/widget/BubblePopupHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "BubblePopupHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1

.field private static final MSG_UPDATE:I = 0x3

.field private static final SCROLL_POS:I = 0x190

.field private static final TAG:Ljava/lang/String; = "BubblePopupHorizontalScrollView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstDrowArrow:Z

.field private mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

.field private mLeftVisible:Z

.field private mLeftVisibleArrowView:Landroid/widget/ImageView;

.field private mOldLeftVisible:Z

.field private mOldRightVisible:Z

.field private mRightVisible:Z

.field private mRightVisibleArrowView:Landroid/widget/ImageView;

.field private mScroller2:Landroid/widget/OverScroller;

.field private mSkipCheckArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BubblePopupHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 32
    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    .line 33
    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    .line 34
    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    .line 35
    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mFirstDrowArrow:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z

    .line 83
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;)V

    iput-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    .line 85
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    .line 86
    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->initScrollPos()V

    .line 88
    return-void
.end method

.method static synthetic access$0(Landroid/widget/BubblePopupHorizontalScrollView;Z)V
    .registers 2

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z

    return-void
.end method

.method static synthetic access$1(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    return-object v0
.end method

.method static synthetic access$10(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Landroid/widget/BubblePopupHorizontalScrollView;)Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    return v0
.end method

.method static synthetic access$3(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V

    return-void
.end method

.method static synthetic access$4(Landroid/widget/BubblePopupHorizontalScrollView;Z)V
    .registers 2

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    return-void
.end method

.method static synthetic access$5(Landroid/widget/BubblePopupHorizontalScrollView;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    return v0
.end method

.method static synthetic access$6(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->hideRightArrow()V

    return-void
.end method

.method static synthetic access$7(Landroid/widget/BubblePopupHorizontalScrollView;Z)V
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    return-void
.end method

.method static synthetic access$8(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$9(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_21

    .line 267
    invoke-virtual {p0, v5}, Landroid/widget/BubblePopupHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_21

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 268
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 271
    .end local v0    # "child":Landroid/view/View;
    :cond_21
    return v1
.end method

.method private hideLeftArrow()V
    .registers 4

    .prologue
    .line 197
    new-instance v0, Landroid/widget/BubblePopupHorizontalScrollView$1;

    invoke-direct {v0, p0}, Landroid/widget/BubblePopupHorizontalScrollView$1;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 207
    .local v0, "arrowListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_5
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    sget v2, Lcom/lge/internal/R$anim;->bubble_popup_arrow_fade_out:I

    invoke-direct {p0, v2, v0}, Landroid/widget/BubblePopupHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 211
    :goto_10
    return-void

    .line 209
    :catch_11
    move-exception v1

    const-string v1, "BubblePopupHorizontalScrollView"

    const-string v2, "Can\'t start animation. Because Fail to load it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private hideRightArrow()V
    .registers 4

    .prologue
    .line 231
    new-instance v0, Landroid/widget/BubblePopupHorizontalScrollView$3;

    invoke-direct {v0, p0}, Landroid/widget/BubblePopupHorizontalScrollView$3;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 241
    .local v0, "arrowListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_5
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    sget v2, Lcom/lge/internal/R$anim;->bubble_popup_arrow_fade_out:I

    invoke-direct {p0, v2, v0}, Landroid/widget/BubblePopupHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 245
    :goto_10
    return-void

    .line 243
    :catch_11
    move-exception v1

    const-string v1, "BubblePopupHorizontalScrollView"

    const-string v2, "Can\'t start animation. Because Fail to load it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 275
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 276
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_d

    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    :cond_d
    return-object v0
.end method

.method private showLeftArrow()V
    .registers 4

    .prologue
    .line 214
    new-instance v0, Landroid/widget/BubblePopupHorizontalScrollView$2;

    invoke-direct {v0, p0}, Landroid/widget/BubblePopupHorizontalScrollView$2;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 224
    .local v0, "arrowListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_5
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    sget v2, Lcom/lge/internal/R$anim;->bubble_popup_arrow_fade_in:I

    invoke-direct {p0, v2, v0}, Landroid/widget/BubblePopupHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 228
    :goto_10
    return-void

    .line 226
    :catch_11
    move-exception v1

    const-string v1, "BubblePopupHorizontalScrollView"

    const-string v2, "Can\'t start animation. Because Fail to load it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private showRightArrow()V
    .registers 4

    .prologue
    .line 248
    new-instance v0, Landroid/widget/BubblePopupHorizontalScrollView$4;

    invoke-direct {v0, p0}, Landroid/widget/BubblePopupHorizontalScrollView$4;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 258
    .local v0, "arrowListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_5
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    sget v2, Lcom/lge/internal/R$anim;->bubble_popup_arrow_fade_in:I

    invoke-direct {p0, v2, v0}, Landroid/widget/BubblePopupHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 262
    :goto_10
    return-void

    .line 260
    :catch_11
    move-exception v1

    const-string v1, "BubblePopupHorizontalScrollView"

    const-string v2, "Can\'t start animation. Because Fail to load it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z

    if-nez v0, :cond_7

    .line 113
    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->drawArrow()V

    .line 115
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method public drawArrow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 159
    .local v0, "scrollRange":I
    if-eqz v0, :cond_a

    if-ne v0, v2, :cond_31

    .line 161
    :cond_a
    iput-boolean v3, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 162
    iput-boolean v3, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    .line 178
    :goto_e
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    iget-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    if-eq v1, v2, :cond_1f

    .line 179
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    if-eqz v1, :cond_48

    .line 180
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->showLeftArrow()V

    .line 184
    :goto_1b
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    .line 186
    :cond_1f
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    iget-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    if-eq v1, v2, :cond_30

    .line 187
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    if-eqz v1, :cond_4c

    .line 188
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->showRightArrow()V

    .line 192
    :goto_2c
    iget-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    .line 194
    :cond_30
    return-void

    .line 164
    :cond_31
    iget v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScrollX:I

    if-nez v1, :cond_3a

    .line 166
    iput-boolean v3, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 167
    iput-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    goto :goto_e

    .line 168
    :cond_3a
    iget v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScrollX:I

    if-ne v1, v0, :cond_43

    .line 170
    iput-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 171
    iput-boolean v3, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    goto :goto_e

    .line 174
    :cond_43
    iput-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 175
    iput-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    goto :goto_e

    .line 182
    :cond_48
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V

    goto :goto_1b

    .line 190
    :cond_4c
    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->hideRightArrow()V

    goto :goto_2c
.end method

.method public enableDrawArrow()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method

.method public hideArrow()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisible:Z

    .line 131
    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z

    .line 132
    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisible:Z

    .line 133
    iput-boolean v1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z

    .line 134
    iput-boolean v2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z

    .line 135
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v2}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 136
    return-void
.end method

.method public initScrollPos()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, v0}, Landroid/widget/BubblePopupHorizontalScrollView;->scrollTo(II)V

    .line 93
    return-void
.end method

.method public moveScroll()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 98
    const/16 v3, -0x834

    .line 99
    .local v3, "velocityX":I
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    const/16 v1, 0x190

    invoke-direct {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->getScrollRange()I

    move-result v6

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 100
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 101
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v9}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    const-string v0, "BubblePopupHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveScroll() : velocityX = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->enableDrawArrow()V

    .line 155
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mFirstDrowArrow:Z

    if-nez v0, :cond_d

    .line 148
    invoke-virtual {p0}, Landroid/widget/BubblePopupHorizontalScrollView;->enableDrawArrow()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mFirstDrowArrow:Z

    .line 151
    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x2

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z

    .line 121
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    iget-object v0, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 124
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerImageView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "leftArrowView"    # Landroid/widget/ImageView;
    .param p2, "rightArrowView"    # Landroid/widget/ImageView;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    .line 107
    iput-object p2, p0, Landroid/widget/BubblePopupHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    .line 108
    return-void
.end method
