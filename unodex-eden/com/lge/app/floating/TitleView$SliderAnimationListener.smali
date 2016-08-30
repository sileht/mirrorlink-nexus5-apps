.class Lcom/lge/app/floating/TitleView$SliderAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TitleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderAnimationListener"
.end annotation


# instance fields
.field private final mSliderWidthActive:I

.field private final mSliderWidthInactive:I

.field final synthetic this$0:Lcom/lge/app/floating/TitleView;


# direct methods
.method public constructor <init>(Lcom/lge/app/floating/TitleView;II)V
    .registers 10
    .param p2, "inactiveWidth"    # I
    .param p3, "activeWidth"    # I

    .prologue
    .line 399
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 400
    # getter for: Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$1(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    .line 401
    .local v1, "fullButtonRight":I
    # getter for: Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$2(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v0

    .line 402
    .local v0, "customButtonRight":I
    invoke-virtual {p1}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getRight()I

    move-result v3

    .line 403
    .local v3, "myRight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 405
    .local v2, "myLeftLimit":I
    # getter for: Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$3(Lcom/lge/app/floating/TitleView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    .line 406
    # getter for: Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$4(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v2

    .line 409
    :cond_3e
    # getter for: Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$5(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_51

    .line 410
    # getter for: Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$5(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 412
    :cond_51
    sub-int v4, v3, p3

    if-ge v4, v2, :cond_5a

    .line 413
    sub-int v4, v3, v2

    if-ge v4, p2, :cond_5f

    .line 414
    move p3, p2

    .line 419
    :cond_5a
    :goto_5a
    iput p2, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthInactive:I

    .line 420
    iput p3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthActive:I

    .line 421
    return-void

    .line 416
    :cond_5f
    sub-int p3, v3, v2

    goto :goto_5a
.end method


# virtual methods
.method public getSliderWidthActive()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthActive:I

    return v0
.end method

.method public getSliderWidthInactive()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthInactive:I

    return v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 438
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/TitleView;->calSliderWidth(Landroid/animation/Animator;)V

    .line 434
    return-void
.end method
