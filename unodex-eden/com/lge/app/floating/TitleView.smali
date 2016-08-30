.class Lcom/lge/app/floating/TitleView;
.super Lcom/lge/app/floating/QslideView;
.source "TitleView.java"

# interfaces
.implements Lcom/lge/app/floating/ITitleView;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/TitleView$DoubleTapListener;,
        Lcom/lge/app/floating/TitleView$SliderAnimationListener;,
        Lcom/lge/app/floating/TitleView$TitleViewTouchListener;
    }
.end annotation


# instance fields
.field private mActivateAnimationOnSliderIgnored:Z

.field private mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

.field private mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

.field private mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCloseButton:Landroid/widget/ImageButton;

.field private final mCustomButton:Landroid/widget/ImageButton;

.field private final mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

.field mDispathchTitleViewActionDown:Z

.field private mDownX:F

.field private mDownY:F

.field private final mFullscreenButton:Landroid/widget/ImageButton;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

.field mLastEvent:Landroid/view/MotionEvent;

.field private final mOpacitySlider:Landroid/widget/SeekBar;

.field private final mOpacitySteps:I

.field private mReservedOverlay:Z

.field private mReservedProgress:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

.field private mSliderOnTracking:Z

.field private final mSupportsQuickOverlay:Z

.field private final mTitleDivider:Landroid/widget/ImageView;

.field private final mTitleText:Landroid/widget/TextView;

.field private mTouchOnSliderIgnored:Z


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindow;)V
    .registers 8
    .param p1, "activity"    # Lcom/lge/app/floating/FloatableActivity;
    .param p2, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/QslideView;-><init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V

    .line 56
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 268
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 269
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    .line 270
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 442
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    .line 619
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mLastEvent:Landroid/view/MotionEvent;

    .line 620
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mDispathchTitleViewActionDown:Z

    .line 693
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 694
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    .line 68
    iput-object p1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    .line 69
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    .line 70
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    new-instance v0, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;-><init>(Lcom/lge/app/floating/TitleView;)V

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    .line 73
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    .line 75
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    .line 79
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleText:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    .line 83
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 86
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    .line 91
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    new-instance v2, Lcom/lge/app/floating/TitleView$DoubleTapListener;

    invoke-direct {v2, p0, v4}, Lcom/lge/app/floating/TitleView$DoubleTapListener;-><init>(Lcom/lge/app/floating/TitleView;Lcom/lge/app/floating/TitleView$DoubleTapListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    invoke-virtual {p0, v3}, Lcom/lge/app/floating/TitleView;->setLayoutDirection(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->update()V

    .line 95
    return-void
.end method

.method static synthetic access$1(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/app/floating/TitleView;)I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    return v0
.end method

.method static synthetic access$11(Lcom/lge/app/floating/TitleView;Z)V
    .registers 2

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    return-void
.end method

.method static synthetic access$12(Lcom/lge/app/floating/TitleView;I)V
    .registers 2

    .prologue
    .line 694
    iput p1, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/app/floating/TitleView;)Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/app/floating/TitleView;)Landroid/view/GestureDetector;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/app/floating/TitleView;Z)V
    .registers 2

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    return-void
.end method

.method static synthetic access$8(Lcom/lge/app/floating/TitleView;)Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lge/app/floating/TitleView;)I
    .registers 2

    .prologue
    .line 694
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    return v0
.end method

.method private createSliderAnimators()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 365
    new-instance v2, Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    .line 366
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 367
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/lge/app/floating/TitleView$SliderAnimationListener;-><init>(Lcom/lge/app/floating/TitleView;II)V

    .line 365
    iput-object v2, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    .line 368
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 369
    .local v1, "interpolator":Landroid/view/animation/DecelerateInterpolator;
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 370
    .local v0, "anim_duration":I
    new-array v2, v6, [F

    fill-array-data v2, :array_72

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 371
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 374
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    new-array v2, v6, [F

    fill-array-data v2, :array_7a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    .line 376
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 377
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 378
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    return-void

    .line 370
    nop

    :array_72
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 375
    :array_7a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSliderAnimator(I)Landroid/animation/ValueAnimator;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b

    .line 351
    :cond_8
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 354
    :cond_b
    if-nez p1, :cond_10

    .line 355
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 360
    :goto_f
    return-object v0

    .line 356
    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 357
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    goto :goto_f

    .line 360
    :cond_16
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    goto :goto_f
.end method

.method private handleTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 530
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 531
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->performClose()V

    .line 532
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 535
    :cond_17
    return-void
.end method

.method private handleTouchFullscreenButton(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 500
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_23

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 502
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 503
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-nez v0, :cond_24

    .line 504
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 522
    :goto_20
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 525
    :cond_23
    return-void

    .line 506
    :cond_24
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onSwitchFullRequested(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 507
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_20

    .line 511
    :cond_3c
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.app.richnote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    instance-of v0, v0, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;

    if-eqz v0, :cond_87

    .line 512
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exceptional case : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iput-boolean v3, v0, Lcom/lge/app/floating/FloatingWindow;->mSwitchingFull:Z

    .line 514
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    check-cast v0, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;

    invoke-interface {v0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;->onSwitchingFullByApp()V

    goto :goto_20

    .line 518
    :cond_87
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, "Do Nothing - onSwitchFullRequested false"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private handleTouchOpacitySlider(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_31

    .line 539
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-eqz v8, :cond_10

    .line 586
    :cond_f
    :goto_f
    return v6

    .line 542
    :cond_10
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    if-ne v8, v10, :cond_22

    .line 543
    sget-object v8, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v9, "slider becomes inactive"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v7}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    .line 546
    :cond_22
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v8

    iput-boolean v6, v8, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    .line 547
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v8, "cancel on slider"

    invoke-static {v6, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    move v6, v7

    .line 586
    goto :goto_f

    .line 548
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_87

    .line 550
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v3

    .line 551
    .local v3, "thumbOffsetW":I
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v3, 0x2

    sub-int v5, v8, v9

    .line 552
    .local v5, "trackW":I
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 553
    .local v2, "progressW":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v4, v8, v3

    .line 554
    .local v4, "trackTouchW":I
    sub-int v8, v2, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 555
    .local v0, "diff":I
    if-le v0, v3, :cond_72

    .line 556
    iput-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 557
    sget-object v7, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v8, "down on slider is ignored"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 560
    :cond_72
    iput-boolean v7, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 561
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    if-ne v8, v10, :cond_2f

    .line 562
    sget-object v8, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v9, "slider becomes active"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    goto :goto_2f

    .line 565
    .end local v0    # "diff":I
    .end local v2    # "progressW":I
    .end local v3    # "thumbOffsetW":I
    .end local v4    # "trackTouchW":I
    .end local v5    # "trackW":I
    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_98

    .line 566
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-nez v8, :cond_f

    .line 569
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_2f

    .line 570
    :cond_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_2f

    .line 571
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-nez v8, :cond_f

    .line 574
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8, v7}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 575
    iput-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 576
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    if-ne v6, v10, :cond_2f

    .line 577
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v8, "slider becomes inactive"

    invoke-static {v6, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v8, "User Touched up Opacity slider. Clear clear LowProfile Request List."

    invoke-static {v6, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    .line 580
    .local v1, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindowManager;->clearLowProfileRequestList()V

    .line 581
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    iput-boolean v7, v6, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 582
    invoke-virtual {p0, v7}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    goto/16 :goto_2f
.end method


# virtual methods
.method public activateOpacitySlider(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(ZZ)V

    .line 345
    return-void
.end method

.method public activateOpacitySlider(ZZ)V
    .registers 13
    .param p1, "flag"    # Z
    .param p2, "withAnimation"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 275
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x0

    .line 276
    .local v3, "va":Landroid/animation/ValueAnimator;
    const/4 v4, 0x0

    .line 277
    .local v4, "vaOpposite":Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 279
    sget-object v5, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "activateOpacitySlider flag : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", withAnimation :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz p1, :cond_99

    .line 282
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_92

    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3e
    iput-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-direct {p0, v8}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 286
    invoke-direct {p0, v9}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 294
    :goto_4d
    new-instance v5, Lcom/lge/app/floating/TitleView$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/lge/app/floating/TitleView$1;-><init>(Lcom/lge/app/floating/TitleView;ZZ)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 324
    :cond_61
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 326
    :cond_64
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-nez v5, :cond_73

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_73

    .line 327
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    :cond_73
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 335
    .local v2, "progress":I
    const/16 v5, 0x64

    if-eq v2, v5, :cond_89

    .line 336
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 338
    :cond_89
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 339
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->invalidate()V

    .line 340
    return-void

    .line 283
    .end local v2    # "progress":I
    :cond_92
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3e

    .line 288
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_99
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_ad

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_9f
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-direct {p0, v9}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 292
    invoke-direct {p0, v8}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v4

    goto :goto_4d

    .line 289
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_ad
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_9f
.end method

.method public addListenerToDefaultTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 856
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, "addListenerToDefaultTouchListener for TitleView"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->setMoveTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 858
    return-void
.end method

.method public calSliderWidth(Landroid/animation/Animator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 384
    check-cast p1, Landroid/animation/ValueAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 385
    .local v1, "o":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 386
    .local v0, "fraction":F
    if-eqz v1, :cond_f

    .line 387
    check-cast v1, Ljava/lang/Float;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 389
    :cond_f
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 390
    .local v2, "sliderParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v3}, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->getSliderWidthInactive()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v4}, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->getSliderWidthActive()I

    move-result v4

    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mSliderAnimationlistener:Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    invoke-virtual {v5}, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->getSliderWidthInactive()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 391
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 393
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 780
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 782
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_28

    .line 783
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_28

    .line 784
    :cond_19
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(Z)V

    .line 786
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 789
    :cond_28
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 623
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/app/floating/TitleView;->mLastEvent:Landroid/view/MotionEvent;

    .line 624
    sget-object v7, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dispatch at title. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4c

    .line 627
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 628
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4c

    .line 683
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_4b
    return v5

    .line 633
    :cond_4c
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iget-boolean v7, v7, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    if-eqz v7, :cond_70

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6a

    .line 635
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 636
    .local v1, "event2":Landroid/view/MotionEvent;
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 637
    move-object p1, v1

    .line 638
    sget-object v7, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v8, "Handle MOVE touch event"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v1    # "event2":Landroid/view/MotionEvent;
    :cond_6a
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iput-boolean v5, v7, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    .line 642
    :cond_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_80

    .line 649
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 652
    :cond_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_c2

    .line 653
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, p0, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->convertViewPositionToWindowPosition(Landroid/view/View;II)[I

    move-result-object v4

    .line 654
    .local v4, "ret":[I
    iget-object v7, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    aget v5, v4, v5

    iput v5, v7, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownX:I

    .line 655
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    aget v7, v4, v6

    iput v7, v5, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownY:I

    .line 657
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v5, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownX:F

    .line 658
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v5, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mTouchDownY:F

    .line 659
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->clearLayoutLimit()V

    .line 660
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->prepareMoveWindow()V

    .line 663
    .end local v4    # "ret":[I
    :cond_c2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_ed

    .line 664
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    iget v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-virtual {v5, v7, v8}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 665
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lge/app/floating/FloatingWindow;->isInCorrectPositionAndSize(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 666
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 671
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_ed
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v5, :cond_102

    .line 673
    :try_start_f5
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-interface {v5, v7, p1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onTitleViewTouch(Lcom/lge/app/floating/FloatingWindow;Landroid/view/MotionEvent;)V
    :try_end_102
    .catch Ljava/lang/AbstractMethodError; {:try_start_f5 .. :try_end_102} :catch_108

    .line 679
    :cond_102
    :goto_102
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    .line 683
    goto/16 :goto_4b

    .line 674
    :catch_108
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    goto :goto_102
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 851
    invoke-super {p0}, Lcom/lge/app/floating/QslideView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMinimumWidth()I
    .registers 6

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "minimumWidth":I
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    .local v1, "titleDivider1":Landroid/widget/ImageView;
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 102
    .local v2, "titleDivider2":Landroid/widget/ImageView;
    const v4, 0x7f0c0012

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 103
    .local v3, "titleDivider3":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2b

    .line 104
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 106
    :cond_2b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_36

    .line 107
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 109
    :cond_36
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_41

    .line 110
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 112
    :cond_41
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4c

    .line 113
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 115
    :cond_4c
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5b

    .line 116
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 118
    :cond_5b
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v4

    if-nez v4, :cond_70

    .line 120
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v4

    .line 122
    :cond_70
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7f

    .line 123
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 125
    :cond_7f
    return v0
.end method

.method public getOpacitySlider()Landroid/widget/SeekBar;
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getRealView()Landroid/view/View;
    .registers 1

    .prologue
    .line 846
    return-object p0
.end method

.method public getTitleText()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public isSliderOnTracking()Z
    .registers 2

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    return v0
.end method

.method isTouchOnSliderIgnored()Z
    .registers 2

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    return v0
.end method

.method public measureAndGetHeight()I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {p0, v3, v4}, Lcom/lge/app/floating/TitleView;->measure(II)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_11

    .line 153
    :goto_6
    invoke-virtual {p0, v2}, Lcom/lge/app/floating/TitleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 158
    :cond_10
    return v2

    .line 149
    .end local v0    # "child":Landroid/view/View;
    :catch_11
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "measure( , )  method is invoked too frequently "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 688
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 689
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, "TitleView onConfigurationChagned invalidate"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->invalidate()V

    .line 691
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 814
    const/high16 v0, 0x12000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 816
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 794
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 795
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on populate accessibility event. event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 596
    sget-object v3, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TitleView onInterceptTouchEvent  : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3c

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/TitleView;->mDownX:F

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/TitleView;->mDownY:F

    .line 602
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindow;->setTouchOffsetX(F)V

    .line 603
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindow;->setTouchOffsetY(F)V

    .line 607
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_71

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/lge/app/floating/TitleView;->mDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 609
    .local v1, "xMove":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/lge/app/floating/TitleView;->mDownY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 611
    .local v2, "yMove":I
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 612
    .local v0, "slop":I
    if-gt v1, v0, :cond_68

    if-le v2, v0, :cond_71

    .line 613
    :cond_68
    sget-object v3, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v4, "TitleView onInterceptTouchEvent  intercepted"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v3, 0x1

    .line 617
    .end local v0    # "slop":I
    .end local v1    # "xMove":I
    .end local v2    # "yMove":I
    :goto_70
    return v3

    :cond_71
    const/4 v3, 0x0

    goto :goto_70
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 129
    invoke-super/range {p0 .. p5}, Lcom/lge/app/floating/QslideView;->onLayout(ZIIII)V

    .line 131
    if-eqz p1, :cond_37

    .line 132
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 133
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, "TitleView onLayout"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_37

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getDockState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    .line 137
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/app/floating/TitleView;->layout(IIII)V

    .line 140
    :cond_37
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const v5, 0x7f080001

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f080002

    .line 697
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 698
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, " Window Docked. Ignore onProgressChanged"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_1b
    :goto_1b
    return-void

    .line 701
    :cond_1c
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    if-eqz v0, :cond_4d

    .line 702
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-gt p2, v0, :cond_35

    .line 703
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lt p2, v0, :cond_35

    .line 704
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 705
    iput p2, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_1b

    .line 707
    :cond_35
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge p2, v0, :cond_48

    .line 708
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 709
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_1b

    .line 712
    :cond_48
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 713
    iput v4, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_1b

    .line 718
    :cond_4d
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ge p2, v0, :cond_75

    .line 719
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-le p2, v0, :cond_75

    .line 720
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 721
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 722
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 723
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    goto :goto_1b

    .line 728
    :cond_75
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge p2, v0, :cond_89

    if-eqz p3, :cond_89

    .line 729
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1b

    .line 733
    :cond_89
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    if-eqz v0, :cond_b3

    .line 734
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ge p2, v0, :cond_b3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 735
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v1, "entering overlay"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 737
    invoke-virtual {p1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 738
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    .line 741
    :cond_b3
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    int-to-float v1, p2

    iget v2, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 743
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 800
    sget-object v0, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on request send accessibility. child="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/app/floating/IFrameView;->getAttachedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    .line 802
    const/4 v0, 0x0

    .line 804
    :goto_3e
    return v0

    :cond_3f
    invoke-super {p0, p1, p2}, Lcom/lge/app/floating/QslideView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_3e
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 752
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 753
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 756
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_24

    .line 757
    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 761
    :goto_23
    return-void

    .line 759
    :cond_24
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_23
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x0

    .line 765
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 767
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ne v1, v2, :cond_1b

    .line 768
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 771
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 773
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_18
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1b
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 776
    return-void

    .line 772
    :cond_23
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_18
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    sget-object v1, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on touch TitleView : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    .line 482
    .local v0, "returnCode":Z
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_39

    .line 484
    sget-object v1, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v2, "LowProfile - Completly. Do not perform by touch Event."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x1

    .line 496
    :goto_38
    return v1

    .line 487
    :cond_39
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v1

    if-ne p1, v1, :cond_45

    .line 488
    invoke-direct {p0, p2}, Lcom/lge/app/floating/TitleView;->handleTouchOpacitySlider(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_43
    :goto_43
    move v1, v0

    .line 496
    goto :goto_38

    .line 490
    :cond_45
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4d

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/TitleView;->handleTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_43

    .line 493
    :cond_4d
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_43

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/TitleView;->handleTouchFullscreenButton(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_43
.end method

.method public performClose()V
    .registers 7

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onCloseRequested(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 447
    :cond_18
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.lge.ltecall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 449
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/app/floating/TitleView$2;

    invoke-direct {v2, p0}, Lcom/lge/app/floating/TitleView$2;-><init>(Lcom/lge/app/floating/TitleView;)V

    .line 455
    const-wide/16 v4, 0x12c

    .line 449
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 457
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_36
.end method

.method public setTouchOnSliderIgnored(Z)V
    .registers 2
    .param p1, "touchOnSliderIgnored"    # Z

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 836
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->update(Z)V

    .line 208
    return-void
.end method

.method update(Z)V
    .registers 12
    .param p1, "withNoWindowAnimation"    # Z

    .prologue
    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->isWindowAttached()Z

    move-result v6

    if-nez v6, :cond_b

    .line 200
    :cond_a
    :goto_a
    return-void

    .line 169
    :cond_b
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 170
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_6f

    .line 171
    const/4 v6, -0x1

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 177
    :goto_14
    iget-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    if-eqz v6, :cond_86

    .line 178
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    iget-boolean v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    if-eqz v7, :cond_82

    :goto_22
    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    if-eqz v3, :cond_84

    move v3, v4

    :goto_32
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 191
    :goto_35
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->updateDividers()V

    .line 192
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iget v7, v7, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getVisibility()I

    move-result v1

    .line 194
    .local v1, "oldVisibility":I
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    iget v3, v3, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_ca

    move v0, v5

    .line 195
    .local v0, "newVisibility":I
    :goto_62
    if-eq v1, v0, :cond_a

    .line 196
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->setVisibility(I)V

    goto :goto_a

    .line 173
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_6f
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Animation.ZoomButtons"

    const-string v8, "style"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_14

    :cond_82
    move v3, v4

    .line 178
    goto :goto_22

    :cond_84
    move v3, v5

    .line 180
    goto :goto_32

    .line 182
    :cond_86
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 183
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v6

    iget v7, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_35

    .line 187
    :cond_b1
    iget-object v7, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    if-eqz v6, :cond_c8

    move v6, v3

    :goto_bc
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_35

    :cond_c8
    move v6, v4

    .line 187
    goto :goto_bc

    .line 194
    .restart local v1    # "oldVisibility":I
    :cond_ca
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->titleShouldBeHidden()Z

    move-result v3

    if-eqz v3, :cond_d6

    move v0, v5

    goto :goto_62

    :cond_d6
    move v0, v4

    goto :goto_62
.end method

.method public updateDividers()V
    .registers 11

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    .line 212
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    if-eqz v6, :cond_34

    .line 213
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 214
    .local v1, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    const v6, 0x7f0c000d

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 215
    .local v3, "titleDivider1":Landroid/widget/ImageView;
    const v6, 0x7f0c000f

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 216
    .local v4, "titleDivider2":Landroid/widget/ImageView;
    const v6, 0x7f0c0012

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 218
    .local v5, "titleDivider3":Landroid/widget/ImageView;
    if-eqz v3, :cond_2d

    if-eqz v4, :cond_2d

    if-nez v5, :cond_35

    .line 219
    :cond_2d
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    const-string v7, "Cannot updateDividers. - Fail to findViewById(titlsDivider)"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v1    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "titleDivider1":Landroid/widget/ImageView;
    .end local v4    # "titleDivider2":Landroid/widget/ImageView;
    .end local v5    # "titleDivider3":Landroid/widget/ImageView;
    :cond_34
    :goto_34
    return-void

    .line 222
    .restart local v1    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "titleDivider1":Landroid/widget/ImageView;
    .restart local v4    # "titleDivider2":Landroid/widget/ImageView;
    .restart local v5    # "titleDivider3":Landroid/widget/ImageView;
    :cond_35
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v6, v1, :cond_58

    .line 223
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update title divider with "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iput-object v1, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    :cond_58
    :try_start_58
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-eqz v6, :cond_a6

    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v9

    .line 231
    .local v0, "dividerAlpha":F
    :goto_6e
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_77

    cmpl-float v6, v0, v9

    if-lez v6, :cond_a9

    .line 232
    :cond_77
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid divider Alpha value : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_8b} :catch_8c

    goto :goto_34

    .line 243
    .end local v0    # "dividerAlpha":F
    :catch_8c
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/QslideView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot updateDividers completly - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a6
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6e

    .line 235
    .restart local v0    # "dividerAlpha":F
    :cond_a9
    :try_start_a9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 236
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 239
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cd} :catch_8c

    goto/16 :goto_34
.end method
