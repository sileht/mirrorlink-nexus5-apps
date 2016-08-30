.class public Lcom/lge/app/floating/FloatingWindow;
.super Ljava/lang/Object;
.source "FloatingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;,
        Lcom/lge/app/floating/FloatingWindow$DefaultOnUpdateListener;,
        Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;,
        Lcom/lge/app/floating/FloatingWindow$LayoutParams;,
        Lcom/lge/app/floating/FloatingWindow$MoveOption;,
        Lcom/lge/app/floating/FloatingWindow$OnDockListener;,
        Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;,
        Lcom/lge/app/floating/FloatingWindow$OnUpdateListener2;,
        Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;,
        Lcom/lge/app/floating/FloatingWindow$RectEvaluator;,
        Lcom/lge/app/floating/FloatingWindow$ResizeOption;,
        Lcom/lge/app/floating/FloatingWindow$SliderAnimation;,
        Lcom/lge/app/floating/FloatingWindow$Tag;
    }
.end annotation


# static fields
.field static final CLIPTRAY_INPUTTYPE:Ljava/lang/String; = "com.lge.systemservice.core.cliptray.INPUTTYPE_CLIPTRAY"

.field static final INIT_CLIPTRAY:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static mIsShowSoftInputOnFocus:Z

.field static sSavedLocation:Z


# instance fields
.field private frameWindowH:I

.field private frameWindowW:I

.field private frameWindowX:I

.field private frameWindowY:I

.field final mActivity:Lcom/lge/app/floating/FloatableActivity;

.field mAlpha:F

.field private mAlphaSavedForLowProfile:F

.field final mAnimStyleId:I

.field public mAppName:Ljava/lang/String;

.field private mBounceAnimator:Landroid/animation/ValueAnimator;

.field private mDockViewBitmap:Landroid/graphics/Bitmap;

.field mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

.field private final mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

.field private mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

.field private mFrameView:Lcom/lge/app/floating/IFrameView;

.field final mHandler:Landroid/os/Handler;

.field mImeShouldBeReShown:Z

.field final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAttached:Z

.field private mIsHidden:Z

.field mIsImeVisible:Z

.field mIsInLowProfile:Z

.field mIsInOverlayMode:Z

.field private mIsMoving:Z

.field mIsPortrait:Z

.field mIsResizing:Z

.field mIsTitleInSeparateWindow:Z

.field private mLayout:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

.field private mLayoutLimit:Z

.field private mLowProfileAnimator:Landroid/animation/ValueAnimator;

.field mNeedToDockOnStarting:Z

.field mRedirectMoveToDown:Z

.field private final mResources:Landroid/content/res/Resources;

.field final mSavedConfig:Landroid/content/res/Configuration;

.field mSavedLandscapeX:I

.field mSavedLandscapeY:I

.field mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

.field mSavedPortraitX:I

.field mSavedPortraitY:I

.field mSwitchingFull:Z

.field private mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

.field private mTitleView:Lcom/lge/app/floating/ITitleView;

.field mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

.field final mUseSeparateWindow:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field final mWindowName:Ljava/lang/String;

.field private titleWindowH:I

.field private titleWindowW:I

.field private titleWindowX:I

.field private titleWindowY:I

.field private touchOffsetX:I

.field private touchOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/app/floating/FloatingWindow;->sSavedLocation:Z

    .line 3559
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/app/floating/FloatingWindow;->mIsShowSoftInputOnFocus:Z

    return-void
.end method

.method constructor <init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindowManager;Ljava/lang/String;Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 11
    .param p1, "activity"    # Lcom/lge/app/floating/FloatableActivity;
    .param p2, "windowManager"    # Lcom/lge/app/floating/FloatingWindowManager;
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    .line 1072
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    .line 1075
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    .line 1076
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    .line 1077
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsAttached:Z

    .line 1078
    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsPortrait:Z

    .line 1079
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mLayoutLimit:Z

    .line 1080
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsMoving:Z

    .line 1081
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsResizing:Z

    .line 1086
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    .line 1087
    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    .line 1088
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 1089
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    .line 1090
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    .line 1093
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSwitchingFull:Z

    .line 1110
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    .line 1115
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 1118
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedPortraitX:I

    .line 1119
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedPortraitY:I

    .line 1120
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLandscapeX:I

    .line 1121
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLandscapeY:I

    .line 1124
    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    .line 1125
    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mDockViewBitmap:Landroid/graphics/Bitmap;

    .line 1126
    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mAppName:Ljava/lang/String;

    .line 2518
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mImeShouldBeReShown:Z

    .line 1148
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1149
    iput-object p2, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    .line 1150
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    .line 1151
    iput-object p3, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    .line 1152
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindowManager;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 1154
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/lge/app/floating/FloatableActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1153
    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1155
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1156
    const-string v3, "Animation.SearchBar"

    const-string v4, "style"

    const-string v5, "android"

    .line 1155
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAnimStyleId:I

    .line 1157
    invoke-virtual {p4}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setLayoutParam(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 1159
    new-instance v0, Lcom/lge/app/floating/FrameView;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-direct {v0, v3, p0}, Lcom/lge/app/floating/FrameView;-><init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindow;)V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    .line 1160
    new-instance v0, Lcom/lge/app/floating/TitleView;

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-direct {v0, v3, p0}, Lcom/lge/app/floating/TitleView;-><init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindow;)V

    iput-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    .line 1162
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_b5

    move v0, v1

    :goto_9a
    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsPortrait:Z

    .line 1163
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1164
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1163
    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mUseSeparateWindow:Z

    .line 1165
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1166
    return-void

    :cond_b5
    move v0, v2

    .line 1162
    goto :goto_9a
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/floating/FloatingWindow;)Z
    .registers 2

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsMoving:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lge/app/floating/FloatingWindow;Z)V
    .registers 2

    .prologue
    .line 1080
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsMoving:Z

    return-void
.end method

.method static synthetic access$3(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/IFrameView;
    .registers 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/app/floating/FloatingWindow;)I
    .registers 2

    .prologue
    .line 1103
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/app/floating/FloatingWindow;)I
    .registers 2

    .prologue
    .line 1104
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/app/floating/FloatingWindow;)F
    .registers 2

    .prologue
    .line 1090
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    return v0
.end method

.method static synthetic access$7(Lcom/lge/app/floating/FloatingWindow;)Lcom/lge/app/floating/ITitleView;
    .registers 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    return-object v0
.end method

.method private attachFrameWindow()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1000000

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1784
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v4, "attachFrameWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1786
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1787
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1788
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1789
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1790
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1791
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1792
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1793
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->mAnimStyleId:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1794
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Floating:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1795
    const/4 v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1796
    const v3, 0x40320

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1812
    invoke-virtual {p0, v1}, Lcom/lge/app/floating/FloatingWindow;->setFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1815
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v7

    if-nez v3, :cond_68

    .line 1816
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useHardwareAcceleration:Z

    if-eqz v3, :cond_7b

    .line 1817
    :cond_68
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iput-boolean v5, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useHardwareAcceleration:Z

    .line 1818
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v7

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1819
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1822
    :cond_7b
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_91

    .line 1823
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1826
    :cond_91
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1827
    .local v2, "sim":I
    and-int/lit8 v3, v2, 0xf

    if-ne v3, v6, :cond_a9

    .line 1828
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iput-boolean v5, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    .line 1829
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1831
    :cond_a9
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    if-eqz v3, :cond_ca

    .line 1833
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1834
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1836
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1837
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v3, v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1839
    :cond_ca
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1841
    :try_start_d1
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_dc
    .catch Ljava/lang/IllegalStateException; {:try_start_d1 .. :try_end_dc} :catch_e0

    .line 1845
    invoke-virtual {p0, v8}, Lcom/lge/app/floating/FloatingWindow;->setTalkbackAppName(Ljava/lang/String;)V

    .line 1846
    return-void

    .line 1842
    :catch_e0
    move-exception v0

    .line 1843
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0
.end method

.method private attachTitleWindow()V
    .registers 9

    .prologue
    .line 1850
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v4, "attachTitleWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-nez v3, :cond_a4

    .line 1855
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v3}, Lcom/lge/app/floating/IFrameView;->removeTitleView()Landroid/view/View;

    .line 1856
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1857
    .local v0, "frameParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1858
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1859
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1860
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1861
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Floating title:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1863
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1867
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1869
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v3, :cond_a5

    .line 1870
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1881
    :goto_5a
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1882
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x10001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1883
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->mAnimStyleId:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1885
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v3}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 1886
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 1887
    const/4 v7, 0x0

    .line 1886
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1888
    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1889
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1890
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    .line 1893
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1894
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1896
    .end local v0    # "frameParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "padding":Landroid/graphics/Rect;
    .end local v2    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_a4
    return-void

    .line 1872
    .restart local v0    # "frameParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_a5
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    if-eqz v3, :cond_b5

    .line 1873
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 1874
    const-string v4, "titleParams : UseIme && OverIme do not allowed."

    .line 1873
    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 1876
    :cond_b5
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5a
.end method

.method private checkWindowSize(II)Z
    .registers 4
    .param p1, "maximum"    # I
    .param p2, "windowSize"    # I

    .prologue
    .line 3194
    if-lt p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private createBounceAnimator(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "end"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 3262
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3263
    .local v1, "start":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3264
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3265
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3266
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3267
    new-instance v2, Lcom/lge/app/floating/FloatingWindow$RectEvaluator;

    invoke-direct {v2, v5}, Lcom/lge/app/floating/FloatingWindow$RectEvaluator;-><init>(Lcom/lge/app/floating/FloatingWindow$RectEvaluator;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    .line 3268
    aput-object p1, v3, v4

    .line 3267
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    .line 3269
    new-instance v0, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;

    invoke-direct {v0, p0, v5}, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;-><init>(Lcom/lge/app/floating/FloatingWindow;Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;)V

    .line 3270
    .local v0, "listener":Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;
    invoke-virtual {v0, v1, p1}, Lcom/lge/app/floating/FloatingWindow$BounceAnimationListener;->checkWhatToUpdate(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3271
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3272
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3273
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3274
    return-void
.end method

.method private detachTitleWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1899
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mUseSeparateWindow:Z

    if-nez v0, :cond_26

    .line 1900
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1901
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1904
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/app/floating/IFrameView;->setTitleView(Landroid/view/View;)V

    .line 1905
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    .line 1907
    :cond_26
    return-void
.end method

.method private static findEditTextRecursively(Landroid/view/View;)V
    .registers 8
    .param p0, "aView"    # Landroid/view/View;

    .prologue
    .line 3562
    sget-boolean v4, Lcom/lge/app/floating/FloatingWindow;->mIsShowSoftInputOnFocus:Z

    if-nez v4, :cond_5

    .line 3584
    :cond_4
    :goto_4
    return-void

    .line 3565
    :cond_5
    instance-of v4, p0, Landroid/widget/EditText;

    if-eqz v4, :cond_52

    .line 3567
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 3568
    const-string v5, "getShowSoftInputOnFocus"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    .line 3567
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3570
    .local v1, "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3569
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/lge/app/floating/FloatingWindow;->mIsShowSoftInputOnFocus:Z

    .line 3571
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mIsShowSoftInputOnFocus : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3572
    sget-boolean v6, Lcom/lge/app/floating/FloatingWindow;->mIsShowSoftInputOnFocus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3571
    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3c

    goto :goto_4

    .line 3573
    .end local v1    # "getShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    :catch_3c
    move-exception v0

    .line 3574
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getShowSoftInputOnFocus() - reflection fail, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3578
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    move-object v3, p0

    .line 3579
    check-cast v3, Landroid/view/ViewGroup;

    .line 3580
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 3581
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/app/floating/FloatingWindow;->findEditTextRecursively(Landroid/view/View;)V

    .line 3580
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a
.end method

.method private repositionFloatingWindow()V
    .registers 21

    .prologue
    .line 1173
    sget-object v18, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v19, "repositionFloatingWindow"

    invoke-static/range {v18 .. v19}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f6

    const/16 v18, 0x1

    :goto_25
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/app/floating/FloatingWindow;->mIsPortrait:Z

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->calculateFloatingWindowSize(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)[I

    move-result-object v7

    .line 1179
    .local v7, "floatingWindowSize":[I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v7, v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v7, v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    move/from16 v18, v0

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1183
    add-int v13, v18, v19

    .line 1185
    .local v13, "middleX":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    move/from16 v18, v0

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1185
    add-int v14, v18, v19

    .line 1188
    .local v14, "middleY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1196
    .local v6, "display":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 1197
    .local v15, "newX":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    move/from16 v16, v0

    .line 1203
    .local v16, "newY":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginLeft:F

    move/from16 v19, v0

    .line 1203
    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1205
    .local v3, "bounceLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginRight:F

    move/from16 v19, v0

    .line 1205
    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1207
    .local v4, "bounceRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginTop:F

    move/from16 v19, v0

    .line 1207
    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1209
    .local v5, "bounceTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginBottom:F

    move/from16 v19, v0

    .line 1209
    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1215
    .local v2, "bounceBottom":I
    rsub-int/lit8 v18, v3, 0x0

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1215
    add-int v10, v18, v19

    .line 1217
    .local v10, "mBounceLeft":I
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    add-int v18, v18, v4

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1217
    sub-int v11, v18, v19

    .line 1219
    .local v11, "mBounceRight":I
    rsub-int/lit8 v18, v5, 0x0

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1219
    add-int v12, v18, v19

    .line 1221
    .local v12, "mBounceTop":I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    add-int v18, v18, v2

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 1221
    sub-int v9, v18, v19

    .line 1226
    .local v9, "mBounceBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    move/from16 v18, v0

    if-nez v18, :cond_1b8

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    .line 1229
    const v19, 0x7f060009

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v12, v12, v18

    .line 1234
    :cond_1b8
    if-lt v13, v10, :cond_1c0

    if-gt v13, v11, :cond_1c0

    .line 1235
    if-lt v14, v12, :cond_1c0

    if-le v14, v9, :cond_1e4

    .line 1236
    :cond_1c0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v17

    .line 1237
    .local v17, "tmp":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 1238
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iput v15, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 1246
    .end local v17    # "tmp":Landroid/graphics/Rect;
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->bounceFloatingWindow()Z

    move-result v8

    .line 1248
    .local v8, "isBounce":Z
    if-nez v8, :cond_1f5

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 1254
    :cond_1f5
    return-void

    .line 1175
    .end local v2    # "bounceBottom":I
    .end local v3    # "bounceLeft":I
    .end local v4    # "bounceRight":I
    .end local v5    # "bounceTop":I
    .end local v6    # "display":Landroid/util/DisplayMetrics;
    .end local v7    # "floatingWindowSize":[I
    .end local v8    # "isBounce":Z
    .end local v9    # "mBounceBottom":I
    .end local v10    # "mBounceLeft":I
    .end local v11    # "mBounceRight":I
    .end local v12    # "mBounceTop":I
    .end local v13    # "middleX":I
    .end local v14    # "middleY":I
    .end local v15    # "newX":I
    .end local v16    # "newY":I
    :cond_1f6
    const/16 v18, 0x0

    goto/16 :goto_25
.end method

.method private runExtraService(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3591
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3592
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.app.floating.res"

    .line 3593
    const-class v3, Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3594
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request DockWindowService to do "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3595
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3594
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3596
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_54

    .line 3597
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3603
    :cond_4e
    :goto_4e
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1, v0}, Lcom/lge/app/floating/FloatableActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3604
    return-void

    .line 3598
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_54
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5e

    .line 3599
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_4e

    .line 3600
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5e
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4e

    .line 3601
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_4e
.end method

.method private setOpacity(FZ)V
    .registers 5
    .param p1, "alpha"    # F
    .param p2, "updateViewLayout"    # Z

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2333
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 2334
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2333
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2335
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2336
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lge/app/floating/FloatingWindow;->setSurfaceViewAlphaRecursively(Landroid/view/View;F)V

    .line 2337
    if-eqz p2, :cond_29

    .line 2338
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2339
    iput p1, p0, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    .line 2340
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v1}, Lcom/lge/app/floating/ITitleView;->update()V

    .line 2343
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_29
    return-void
.end method

.method private setOverlay(ZZ)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "updateViewLayout"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2240
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    if-ne v1, p1, :cond_19

    .line 2241
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "overlay mode is already "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    :cond_19
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set overlay = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    .line 2245
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsAttached:Z

    if-nez v1, :cond_34

    .line 2293
    :goto_33
    return-void

    .line 2248
    :cond_34
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_45

    .line 2249
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    instance-of v1, v1, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener2;

    if-eqz v1, :cond_45

    .line 2250
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    check-cast v1, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener2;

    invoke-interface {v1, p0, p1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener2;->onOverlayStateChanged(Lcom/lge/app/floating/FloatingWindow;Z)V

    .line 2253
    :cond_45
    if-eqz p1, :cond_8e

    .line 2256
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 2257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2256
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2258
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2259
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setNotFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2261
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v1, v4}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2262
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2264
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v1

    if-nez v1, :cond_70

    .line 2265
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindow;->attachTitleWindow()V

    .line 2267
    :cond_70
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 2270
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-eqz v1, :cond_88

    .line 2271
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "hide IME in overlay mode"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->hideIme()V

    .line 2273
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/lge/app/floating/FloatingFunctionReflect;->finishInputLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 2274
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 2292
    :cond_88
    :goto_88
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v1}, Lcom/lge/app/floating/IFrameView;->update()V

    goto :goto_33

    .line 2277
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_8e
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v1

    if-nez v1, :cond_97

    .line 2278
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindow;->detachTitleWindow()V

    .line 2281
    :cond_97
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p2}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(FZ)V

    .line 2284
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2285
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2286
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2287
    if-eqz p2, :cond_b9

    .line 2288
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2290
    :cond_b9
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->gainFocus()V

    goto :goto_88
.end method

.method private static setSurfaceViewAlphaRecursively(Landroid/view/View;F)V
    .registers 8
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 3528
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3552
    :cond_6
    :goto_6
    return-void

    .line 3532
    :cond_7
    instance-of v3, p0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_2f

    .line 3535
    :try_start_b
    invoke-static {p0}, Lcom/lge/app/floating/FloatingFunctionReflect;->getSurfaceLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3536
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_6

    .line 3537
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3538
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/lge/app/floating/FloatingFunctionReflect;->updateWindow(Landroid/view/View;ZZ)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_6

    .line 3541
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :catch_19
    move-exception v3

    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot set alpha for view: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3546
    :cond_2f
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    move-object v2, p0

    .line 3547
    check-cast v2, Landroid/view/ViewGroup;

    .line 3548
    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 3549
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lge/app/floating/FloatingWindow;->setSurfaceViewAlphaRecursively(Landroid/view/View;F)V

    .line 3548
    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method

.method private static setSurfaceViewBackgroundAsTransparentRecursively(Landroid/view/View;)V
    .registers 4
    .param p0, "aView"    # Landroid/view/View;

    .prologue
    .line 3502
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3518
    :cond_6
    :goto_6
    return-void

    .line 3506
    :cond_7
    instance-of v2, p0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_10

    .line 3507
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    .line 3511
    :cond_10
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    move-object v1, p0

    .line 3512
    check-cast v1, Landroid/view/ViewGroup;

    .line 3513
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 3515
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3514
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindow;->setSurfaceViewBackgroundAsTransparentRecursively(Landroid/view/View;)V

    .line 3513
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V
    .registers 16
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .param p2, "preferSavedRegion"    # Z

    .prologue
    const v12, 0x7f060009

    const v11, 0x7f060002

    .line 1423
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "updateLayoutParamsInner to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v9}, Lcom/lge/app/floating/ITitleView;->getMinimumWidth()I

    move-result v9

    if-ge v8, v9, :cond_47

    .line 1427
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    if-eqz v8, :cond_47

    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    if-eqz v8, :cond_47

    .line 1428
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    int-to-float v8, v8

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 1429
    .local v5, "ratio":F
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v8}, Lcom/lge/app/floating/ITitleView;->getMinimumWidth()I

    move-result v8

    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 1430
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v8}, Lcom/lge/app/floating/ITitleView;->getMinimumWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 1437
    .end local v5    # "ratio":F
    :cond_47
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    if-ne v8, v9, :cond_8d

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    if-ne v8, v9, :cond_8d

    .line 1438
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    if-eq v8, v9, :cond_8d

    .line 1439
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1440
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1442
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 1444
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1445
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1446
    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1447
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1444
    add-int v0, v8, v9

    .line 1448
    .local v0, "defaultY":I
    iput v0, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 1454
    .end local v0    # "defaultY":I
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    :cond_8d
    if-eqz p2, :cond_101

    .line 1455
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v9, "use preferSavedRegion info"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v8}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1457
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1458
    .restart local v1    # "display":Landroid/util/DisplayMetrics;
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 1459
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    .line 1458
    div-float v3, v8, v9

    .line 1460
    .local v3, "hRatio":F
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 1461
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    .line 1460
    div-float v7, v8, v9

    .line 1462
    .local v7, "vRatio":F
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    .line 1463
    const-string v9, "com.lge.app.floating.pref"

    const/4 v10, 0x0

    .line 1462
    invoke-virtual {v8, v9, v10}, Lcom/lge/app/floating/FloatableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1464
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "floating_w"

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 1465
    const-string v8, "floating_h"

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 1466
    const-string v8, "floating_hor_ratio"

    invoke-interface {v4, v8, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 1467
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 1466
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1468
    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 1466
    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 1469
    const-string v8, "floating_ver_ratio"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 1470
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 1469
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1471
    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 1469
    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 1475
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v3    # "hRatio":F
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "vRatio":F
    :cond_101
    iget-boolean v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-nez v8, :cond_12f

    .line 1476
    iget-boolean v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v9

    iget-boolean v9, v9, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-eq v8, v9, :cond_12f

    .line 1477
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1478
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 1479
    iget-object v10, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1480
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_12f

    .line 1481
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1482
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1483
    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1484
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 1481
    iput v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 1488
    :cond_12f
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    if-eq v8, p1, :cond_16a

    .line 1490
    iget-boolean v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v9

    iget-boolean v9, v9, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eq v8, v9, :cond_163

    .line 1491
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v9, "Adjust titleView flag to changed dontUseIme flag."

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1494
    .local v6, "titleParams":Landroid/view/WindowManager$LayoutParams;
    :try_start_150
    iget-boolean v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v8, :cond_19e

    .line 1495
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x20001

    and-int/2addr v8, v9

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_15c
    .catch Ljava/lang/NullPointerException; {:try_start_150 .. :try_end_15c} :catch_1aa

    .line 1508
    :goto_15c
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1510
    .end local v6    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_163
    invoke-virtual {p1}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lge/app/floating/FloatingWindow;->setLayoutParam(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 1514
    :cond_16a
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->updateRealPositionAndSize()V

    .line 1518
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v8}, Lcom/lge/app/floating/ITitleView;->update()V

    .line 1520
    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v8}, Lcom/lge/app/floating/IFrameView;->update()V

    .line 1522
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-virtual {p0, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    .line 1523
    iget v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    iget v9, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-virtual {p0, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->setSize(II)V

    .line 1525
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "actual LayoutParams: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return-void

    .line 1497
    .restart local v6    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_19e
    :try_start_19e
    iget-boolean v8, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    if-eqz v8, :cond_1c7

    .line 1498
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v9, "titleParams : UseIme && OverIme do not allowed."

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/lang/NullPointerException; {:try_start_19e .. :try_end_1a9} :catch_1aa

    goto :goto_15c

    .line 1504
    :catch_1aa
    move-exception v2

    .line 1505
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v8, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "NullPointerException during adjust dontUseIme : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_15c

    .line 1500
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_1c7
    :try_start_1c7
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1ce
    .catch Ljava/lang/NullPointerException; {:try_start_1c7 .. :try_end_1ce} :catch_1aa

    goto :goto_15c
.end method


# virtual methods
.method attach()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1653
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindow;->attachFrameWindow()V

    .line 1655
    iget-boolean v7, p0, Lcom/lge/app/floating/FloatingWindow;->mUseSeparateWindow:Z

    if-eqz v7, :cond_d

    .line 1656
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindow;->attachTitleWindow()V

    .line 1660
    :cond_d
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0c0006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1661
    const/16 v8, 0x8

    .line 1660
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lge/app/floating/FloatingWindow;->setAttached(Z)V

    .line 1667
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 1671
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v7, p0}, Lcom/lge/app/floating/FloatingWindowManager;->notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 1673
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1674
    const-string v8, "com.lge.app.floating.opacity"

    .line 1673
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    .line 1679
    .local v6, "opacity":F
    cmpg-float v7, v6, v9

    if-gez v7, :cond_40

    .line 1680
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 1687
    :cond_40
    invoke-direct {p0}, Lcom/lge/app/floating/FloatingWindow;->repositionFloatingWindow()V

    .line 1691
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1692
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_5e

    .line 1694
    const-string v7, "com.lge.floating.NEED_TO_DOCK"

    const/4 v8, 0x0

    .line 1693
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/app/floating/FloatingWindow;->mNeedToDockOnStarting:Z

    .line 1695
    const-string v7, "com.lge.floating.NEED_TO_DOCK"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1696
    const-string v7, "com.lge.floating.DOCK_DIRECTION"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1700
    :cond_5e
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v7, p0}, Lcom/lge/app/floating/FloatableActivity;->handleAttachToFloatingWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 1703
    const/4 v3, -0x1

    .line 1704
    .local v3, "dockServiceEnabledFlagId":I
    const/4 v5, 0x1

    .line 1705
    .local v5, "isDockServiceEnabled":Z
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 1706
    const-string v8, "dock_service_enabled"

    const-string v9, "bool"

    const-string v10, "com.lge.internal"

    .line 1705
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1707
    if-lez v3, :cond_79

    .line 1708
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 1710
    :cond_79
    if-eqz v5, :cond_ef

    .line 1711
    sget-object v7, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v8, "dock service is available"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->initFloatingDockWindow()V

    .line 1713
    sget-object v7, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mDockWindow = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-boolean v7, p0, Lcom/lge/app/floating/FloatingWindow;->mNeedToDockOnStarting:Z

    if-eqz v7, :cond_ef

    .line 1715
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1716
    .local v0, "dockPoint":Landroid/graphics/Point;
    const-string v7, "com.lge.floating.DOCK_POSX"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1717
    .local v1, "dockPosX":I
    const-string v7, "com.lge.floating.DOCK_POSY"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1718
    .local v2, "dockPosY":I
    const-string v7, "com.lge.floating.DOCK_POSX"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1719
    const-string v7, "com.lge.floating.DOCK_POSY"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1720
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1721
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1723
    sget-object v7, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreDockWindow to pos ( "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v9}, Lcom/lge/app/floating/FloatingDockWindow;->restoreDockWindow(II)V

    .line 1727
    .end local v0    # "dockPoint":Landroid/graphics/Point;
    .end local v1    # "dockPosX":I
    .end local v2    # "dockPosY":I
    :cond_ef
    return-void
.end method

.method bounceFloatingWindow()Z
    .registers 4

    .prologue
    .line 3398
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 3399
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 3398
    invoke-virtual {p0, v1, v2}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3400
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->bounceFloatingWindow(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method bounceFloatingWindow(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3404
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatingWindow;->isInCorrectPositionAndSize(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3405
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FloatingWindow;->createBounceAnimator(Landroid/graphics/Rect;)V

    .line 3406
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getBounceAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3407
    const/4 v0, 0x1

    .line 3409
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method calculateCorrectPosition(II)Landroid/graphics/Rect;
    .registers 18
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3141
    iget-object v12, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v12}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 3143
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget v1, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 3144
    .local v1, "correctWidth":I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget v0, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 3146
    .local v0, "correctHeight":I
    const/4 v10, 0x0

    .line 3147
    .local v10, "minY":I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget-boolean v12, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-nez v12, :cond_27

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget-boolean v12, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    if-eqz v12, :cond_8b

    :cond_27
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v12

    if-nez v12, :cond_8b

    .line 3148
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget v12, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginTop:F

    .line 3149
    int-to-float v13, v0

    mul-float/2addr v12, v13

    .line 3148
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    rsub-int/lit8 v10, v12, 0x0

    .line 3161
    :goto_3b
    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3162
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v14

    iget v14, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginBottom:F

    sub-float/2addr v13, v14

    .line 3163
    int-to-float v14, v0

    .line 3162
    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3161
    sub-int v8, v12, v13

    .line 3164
    .local v8, "maxY":I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v12

    iget v12, v12, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginLeft:F

    .line 3165
    int-to-float v13, v1

    mul-float/2addr v12, v13

    .line 3164
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    rsub-int/lit8 v9, v12, 0x0

    .line 3166
    .local v9, "minX":I
    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3167
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v14

    iget v14, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->bounceMarginRight:F

    sub-float/2addr v13, v14

    .line 3168
    int-to-float v14, v1

    .line 3167
    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3166
    sub-int v7, v12, v13

    .line 3170
    .local v7, "maxX":I
    move/from16 v4, p1

    .line 3171
    .local v4, "currentX":I
    move/from16 v5, p2

    .line 3173
    .local v5, "currentY":I
    if-le v4, v7, :cond_a0

    move v2, v7

    .line 3175
    .local v2, "correctX":I
    :goto_76
    if-le v5, v8, :cond_a6

    move v3, v8

    .line 3178
    .local v3, "correctY":I
    :goto_79
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 3179
    .local v11, "rect":Landroid/graphics/Rect;
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3180
    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 3181
    add-int v12, v2, v1

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 3182
    add-int v12, v3, v0

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 3183
    return-object v11

    .line 3155
    .end local v2    # "correctX":I
    .end local v3    # "correctY":I
    .end local v4    # "currentX":I
    .end local v5    # "currentY":I
    .end local v7    # "maxX":I
    .end local v8    # "maxY":I
    .end local v9    # "minX":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    :cond_8b
    iget-object v12, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3156
    const v13, 0x7f060009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 3157
    iget-object v13, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3158
    const v14, 0x7f060002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 3155
    add-int v10, v12, v13

    goto :goto_3b

    .line 3173
    .restart local v4    # "currentX":I
    .restart local v5    # "currentY":I
    .restart local v7    # "maxX":I
    .restart local v8    # "maxY":I
    .restart local v9    # "minX":I
    :cond_a0
    if-ge v4, v9, :cond_a4

    move v2, v9

    goto :goto_76

    :cond_a4
    move v2, v4

    .line 3174
    goto :goto_76

    .line 3175
    .restart local v2    # "correctX":I
    :cond_a6
    if-ge v5, v10, :cond_aa

    move v3, v10

    goto :goto_79

    :cond_aa
    move v3, v5

    .line 3176
    goto :goto_79
.end method

.method calculateFloatingWindowLocationY(I)I
    .registers 8
    .param p1, "currentY"    # I

    .prologue
    const v5, 0x7f060009

    const v4, 0x7f060002

    .line 3240
    move v0, p1

    .line 3245
    .local v0, "floatingWindowY":I
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3246
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3245
    sub-int v2, v0, v2

    .line 3246
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3247
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-le v2, v3, :cond_29

    const/4 v1, 0x1

    .line 3249
    .local v1, "isInScreen":Z
    :goto_18
    if-nez v1, :cond_28

    .line 3252
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3253
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3254
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3255
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3252
    add-int v0, v2, v3

    .line 3257
    :cond_28
    return v0

    .line 3248
    .end local v1    # "isInScreen":Z
    :cond_29
    const/4 v1, 0x0

    goto :goto_18
.end method

.method calculateFloatingWindowSize(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)[I
    .registers 16
    .param p1, "mLayout"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    const v13, 0x7f060009

    const v12, 0x7f060002

    const/4 v11, 0x7

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3198
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3199
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 3200
    .local v4, "display":Landroid/util/DisplayMetrics;
    const/4 v6, 0x2

    new-array v5, v6, [I

    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    aput v6, v5, v9

    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    aput v6, v5, v10

    .line 3201
    .local v5, "floatingWindowSize":[I
    const/4 v2, 0x0

    .line 3202
    .local v2, "diffHeight":I
    const/4 v3, 0x0

    .line 3204
    .local v3, "diffWidth":I
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-direct {p0, v6, v7}, Lcom/lge/app/floating/FloatingWindow;->checkWindowSize(II)Z

    move-result v1

    .line 3206
    .local v1, "checkWidth":Z
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3207
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3206
    sub-int/2addr v6, v7

    .line 3208
    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    iget-object v8, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3209
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 3208
    add-int/2addr v7, v8

    .line 3205
    invoke-direct {p0, v6, v7}, Lcom/lge/app/floating/FloatingWindow;->checkWindowSize(II)Z

    move-result v0

    .line 3210
    .local v0, "checkHeight":Z
    if-nez v0, :cond_6d

    .line 3214
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3215
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3216
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3217
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 3214
    aput v6, v5, v10

    .line 3218
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    aget v7, v5, v10

    sub-int v2, v6, v7

    .line 3220
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    if-eq v6, v11, :cond_60

    .line 3221
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    if-nez v6, :cond_6c

    .line 3222
    :cond_60
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    mul-int/2addr v6, v2

    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    div-int v3, v6, v7

    .line 3223
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    sub-int/2addr v6, v3

    aput v6, v5, v9

    .line 3236
    :cond_6c
    :goto_6c
    return-object v5

    .line 3225
    :cond_6d
    if-nez v1, :cond_6c

    .line 3226
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v6, v5, v9

    .line 3227
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    aget v7, v5, v9

    sub-int v3, v6, v7

    .line 3229
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    if-eq v6, v11, :cond_81

    .line 3230
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    if-nez v6, :cond_6c

    .line 3231
    :cond_81
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    mul-int/2addr v6, v3

    iget v7, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    div-int v2, v6, v7

    .line 3232
    iget v6, p1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    sub-int/2addr v6, v2

    aput v6, v5, v10

    goto :goto_6c
.end method

.method calculateLocationRatio(III)I
    .registers 6
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "point"    # I

    .prologue
    .line 3188
    mul-int v1, p2, p3

    div-int v0, v1, p1

    .line 3189
    .local v0, "res":I
    if-lt v0, p2, :cond_7

    .end local p2    # "width":I
    :goto_6
    return p2

    .restart local p2    # "width":I
    :cond_7
    move p2, v0

    goto :goto_6
.end method

.method callBackOnExitingLowProfileMode()V
    .registers 4

    .prologue
    .line 2907
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callBackOnExitingLowProfileMode. IsHidden : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 2909
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v0, :cond_24

    .line 2910
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    invoke-interface {v0, p0, v1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onExitingLowProfileMode(Lcom/lge/app/floating/FloatingWindow;Z)Z

    .line 2912
    :cond_24
    return-void
.end method

.method clearLayoutLimit()V
    .registers 6

    .prologue
    const v4, -0x10001

    .line 2494
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "clearLayoutLimit"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .line 2496
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mLayoutLimit:Z

    .line 2497
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    .line 2498
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2497
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2499
    .local v0, "frameParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    .line 2500
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2499
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2501
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_28

    if-nez v1, :cond_29

    .line 2514
    :cond_28
    :goto_28
    return-void

    .line 2504
    :cond_29
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    if-nez v2, :cond_3c

    .line 2505
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2506
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2508
    :cond_3c
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v2, :cond_4b

    .line 2509
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2510
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2512
    :cond_4b
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2513
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_28
.end method

.method public close()V
    .registers 2

    .prologue
    .line 2159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->close(Z)V

    .line 2160
    return-void
.end method

.method public close(Z)V
    .registers 5
    .param p1, "isReturningToFullscreen"    # Z

    .prologue
    .line 2171
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close floating window :  ( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2172
    const-string v2, " ) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2171
    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p0, p1}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 2174
    return-void
.end method

.method closeInner()V
    .registers 2

    .prologue
    .line 2178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 2179
    return-void
.end method

.method closeInner(Z)V
    .registers 7
    .param p1, "isReturningToFullscreen"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2183
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeInner floating window :  ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2183
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    sput-boolean v4, Lcom/lge/app/floating/FloatingWindow;->sSavedLocation:Z

    .line 2186
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2189
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 2192
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2193
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v1, :cond_5b

    .line 2194
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    .line 2195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2194
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2196
    .local v0, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/lge/app/floating/FloatingWindow;->mAnimStyleId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2197
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2198
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2204
    .end local v0    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5b
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v1}, Lcom/lge/app/floating/IFrameView;->resetResizeFrame()Z

    .line 2208
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2209
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "exit overlay mode"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-direct {p0, v4, v4}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(ZZ)V

    .line 2212
    :cond_70
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatingWindow;->setAttached(Z)V

    .line 2215
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1, p0, p1}, Lcom/lge/app/floating/FloatableActivity;->handleDetachFromFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Z)V

    .line 2218
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_83

    .line 2219
    if-eqz p1, :cond_a7

    .line 2220
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-interface {v1, p0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onSwitchingFull(Lcom/lge/app/floating/FloatingWindow;)V

    .line 2227
    :cond_83
    :goto_83
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close : isReturningToFullscreen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2227
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    if-nez p1, :cond_9d

    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mSwitchingFull:Z

    if-eqz v1, :cond_ad

    .line 2230
    :cond_9d
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    .line 2231
    const-string v2, "fullmode"

    .line 2230
    invoke-virtual {v1, p0, v2}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V

    .line 2236
    :goto_a4
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mSwitchingFull:Z

    .line 2237
    return-void

    .line 2222
    :cond_a7
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-interface {v1, p0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onClosing(Lcom/lge/app/floating/FloatingWindow;)V

    goto :goto_83

    .line 2233
    :cond_ad
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    .line 2234
    const-string v2, "close"

    .line 2233
    invoke-virtual {v1, p0, v2}, Lcom/lge/app/floating/FloatingWindowManager;->removeFloatingWindow(Lcom/lge/app/floating/FloatingWindow;Ljava/lang/String;)V

    goto :goto_a4
.end method

.method configurationChangeForActivity(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatableActivity;->restartIfNecessary(Landroid/content/res/Configuration;)V

    .line 3588
    return-void
.end method

.method configurationChangeforWindow(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 3072
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v3, p1}, Lcom/lge/app/floating/FloatableActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3073
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3074
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 3073
    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 3074
    const/4 v4, 0x0

    .line 3073
    cmpl-float v3, v3, v4

    if-lez v3, :cond_64

    const/4 v0, 0x1

    .line 3075
    .local v0, "fontScaleChanged":Z
    :goto_17
    if-nez v0, :cond_25

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 3077
    :cond_25
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v3, p1}, Lcom/lge/app/floating/FloatableActivity;->setViewForConfigChanged(Landroid/content/res/Configuration;)V

    .line 3079
    if-eqz v0, :cond_51

    .line 3080
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v3

    .line 3081
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 3080
    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 3082
    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 3080
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3083
    .local v1, "size":I
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v3

    .line 3084
    int-to-float v4, v1

    .line 3083
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3087
    .end local v1    # "size":I
    :cond_51
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_5e

    .line 3089
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v2, p1}, Lcom/lge/app/floating/IFrameView;->doOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3091
    :cond_5e
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3092
    return-void

    .end local v0    # "fontScaleChanged":Z
    :cond_64
    move v0, v2

    .line 3073
    goto :goto_17
.end method

.method convertViewPositionToWindowPosition(Landroid/view/View;II)[I
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1622
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v7}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 1623
    .local v1, "padding":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v7}, Lcom/lge/app/floating/ITitleView;->measureAndGetHeight()I

    move-result v3

    .line 1624
    .local v3, "titleHeight":I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    iget-boolean v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    if-nez v7, :cond_4f

    .line 1625
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->titleShouldBeHidden()Z

    move-result v7

    if-nez v7, :cond_4f

    move v0, v5

    .line 1627
    .local v0, "canIgnoreTitleHeight":Z
    :goto_1e
    new-array v2, v8, [I

    .line 1628
    .local v2, "positionInWindow":[I
    new-array v4, v8, [I

    .line 1629
    .local v4, "viewLocation":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1631
    aget v7, v4, v5

    add-int/2addr v7, p2

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    aput v7, v2, v5

    .line 1632
    aget v5, v4, v6

    add-int/2addr v5, p3

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    aput v5, v2, v6

    .line 1634
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mUseSeparateWindow:Z

    if-eqz v5, :cond_51

    .line 1635
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-ne v5, v7, :cond_4e

    .line 1636
    if-nez v0, :cond_4e

    .line 1637
    aget v5, v2, v6

    sub-int/2addr v5, v3

    aput v5, v2, v6

    .line 1646
    :cond_4e
    :goto_4e
    return-object v2

    .end local v0    # "canIgnoreTitleHeight":Z
    .end local v2    # "positionInWindow":[I
    .end local v4    # "viewLocation":[I
    :cond_4f
    move v0, v6

    .line 1624
    goto :goto_1e

    .line 1641
    .restart local v0    # "canIgnoreTitleHeight":Z
    .restart local v2    # "positionInWindow":[I
    .restart local v4    # "viewLocation":[I
    :cond_51
    if-nez v0, :cond_4e

    .line 1642
    aget v5, v2, v6

    sub-int/2addr v5, v3

    aput v5, v2, v6

    goto :goto_4e
.end method

.method public enterLowProfile(Z)V
    .registers 10
    .param p1, "hide"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2770
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    if-nez v5, :cond_14

    if-nez p1, :cond_14

    .line 2771
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v4, "Current state is already in LowProfile(false). Do not enterLowProfile."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    :goto_13
    return-void

    .line 2774
    :cond_14
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-eqz v5, :cond_26

    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    if-eqz v5, :cond_26

    if-eqz p1, :cond_26

    .line 2775
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v4, "Current state is already in LowProfile(true). Do not enterLowProfile."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 2779
    :cond_26
    sget-object v5, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enter low profile. hide="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 2782
    sget-object v5, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 2783
    const-string v6, "enterLowProfile cancels started mLowProfileAnimator"

    .line 2782
    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2793
    :cond_52
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsResizing:Z

    if-eqz v5, :cond_79

    .line 2794
    sget-object v5, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v6, "cancel resizing when entering low profile"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v5}, Lcom/lge/app/floating/IFrameView;->updateResizeHandle()V

    .line 2800
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v5}, Lcom/lge/app/floating/IFrameView;->resetResizeFrame()Z

    .line 2801
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v5, :cond_70

    .line 2802
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-interface {v5, p0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onResizeCanceled(Lcom/lge/app/floating/FloatingWindow;)V

    .line 2804
    :cond_70
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsResizing:Z

    .line 2805
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 2807
    :cond_79
    const/4 v1, 0x0

    .line 2809
    .local v1, "proceed":Z
    :try_start_7a
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v5, :cond_91

    .line 2810
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-interface {v5, p0, p1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onEnteringLowProfileMode(Lcom/lge/app/floating/FloatingWindow;Z)Z
    :try_end_83
    .catch Ljava/lang/AbstractMethodError; {:try_start_7a .. :try_end_83} :catch_93

    move-result v5

    if-nez v5, :cond_91

    move v1, v3

    .line 2814
    :goto_87
    if-nez v1, :cond_9c

    .line 2815
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 2816
    const-string v4, "application wants to stop proceeding enterLowProfile"

    .line 2815
    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_91
    move v1, v4

    .line 2809
    goto :goto_87

    .line 2812
    :catch_93
    move-exception v5

    sget-object v5, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v6, "AbstractMethodError!"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 2820
    :cond_9c
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-nez v5, :cond_a6

    .line 2821
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v5

    iput v5, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    .line 2824
    :cond_a6
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 2825
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    .line 2827
    if-nez p1, :cond_118

    .line 2828
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 2829
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v5, :cond_ca

    .line 2830
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    .line 2831
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2830
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2832
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x11

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2833
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2835
    .end local v2    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_ca
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 2836
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    aput v6, v5, v3

    const v3, 0x3dcccccd    # 0.1f

    aput v3, v5, v4

    .line 2835
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    .line 2838
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2840
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/lge/app/floating/FloatingWindow$3;

    invoke-direct {v4, p0}, Lcom/lge/app/floating/FloatingWindow$3;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2853
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    .line 2854
    new-instance v4, Lcom/lge/app/floating/FloatingWindow$4;

    invoke-direct {v4, p0}, Lcom/lge/app/floating/FloatingWindow$4;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2868
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2870
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    if-eqz v3, :cond_113

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_113

    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v3, :cond_113

    .line 2871
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    .line 2872
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    .line 2871
    invoke-virtual {p0, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2901
    :cond_113
    :goto_113
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    goto/16 :goto_13

    .line 2876
    :cond_118
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 2877
    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 2878
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 2879
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    .line 2880
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2879
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2881
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    .line 2882
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2883
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2884
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setNotFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2886
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v4, v3}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2888
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2890
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v3, :cond_113

    .line 2891
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    .line 2892
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2891
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2893
    .restart local v2    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    .line 2894
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2896
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2897
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_113
.end method

.method public exitLowProfile()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2919
    iget-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-eqz v4, :cond_47

    .line 2920
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exit from low profile. mIsHidden="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2924
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v5, "exitLowProfile cancels started mLowProfileAnimator"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2934
    :cond_36
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v4, :cond_48

    .line 2935
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    invoke-interface {v4, p0, v5}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onExitingLowProfileMode(Lcom/lge/app/floating/FloatingWindow;Z)Z

    move-result v4

    if-nez v4, :cond_48

    move v0, v2

    .line 2936
    .local v0, "proceed":Z
    :goto_45
    if-nez v0, :cond_4a

    .line 3006
    .end local v0    # "proceed":Z
    :cond_47
    :goto_47
    return-void

    :cond_48
    move v0, v3

    .line 2934
    goto :goto_45

    .line 2939
    .restart local v0    # "proceed":Z
    :cond_4a
    iget-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    if-nez v4, :cond_ab

    .line 2940
    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v5

    aput v5, v4, v2

    .line 2941
    iget v5, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    aput v5, v4, v3

    .line 2940
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    .line 2943
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2944
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/lge/app/floating/FloatingWindow$5;

    invoke-direct {v4, p0}, Lcom/lge/app/floating/FloatingWindow$5;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2955
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    .line 2956
    new-instance v4, Lcom/lge/app/floating/FloatingWindow$6;

    invoke-direct {v4, p0}, Lcom/lge/app/floating/FloatingWindow$6;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2970
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mLowProfileAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2994
    :goto_81
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v3, :cond_9c

    .line 2995
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    .line 2996
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2995
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2997
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2998
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 3000
    .end local v1    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_9c
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 3001
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 3002
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsHidden:Z

    .line 3003
    iput-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    goto :goto_47

    .line 2972
    :cond_ab
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 2973
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2975
    iget-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v3, :cond_c7

    .line 2976
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v3, v4}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2979
    :cond_c7
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_e0

    .line 2980
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v4, "hidden to opaque"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 2982
    invoke-virtual {p0, v7}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 2985
    iget-object v3, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v3, v2, v2}, Lcom/lge/app/floating/ITitleView;->activateOpacitySlider(ZZ)V

    goto :goto_81

    .line 2987
    :cond_e0
    sget-object v3, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hidden to mAlphaSavedForLowProfile = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2988
    iget v5, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2987
    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    invoke-virtual {p0, v3}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    goto :goto_81
.end method

.method public findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 4
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1355
    if-eqz p1, :cond_11

    const-string v1, "tag_seekbar"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1356
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v1}, Lcom/lge/app/floating/ITitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1365
    :cond_10
    :goto_10
    return-object v0

    .line 1361
    :cond_11
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1362
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_10

    .line 1365
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_10
.end method

.method finishMoveWindow()V
    .registers 5

    .prologue
    .line 2015
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "finish move window"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/view/WindowManagerHelper;->finishWindowMove(Landroid/view/View;)V

    .line 2017
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/view/WindowManagerHelper;->finishWindowMove(Landroid/view/View;)V

    .line 2018
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2019
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2020
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2021
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2022
    .local v0, "frameParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2023
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2025
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2026
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2030
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingWindow;->setSurfaceViewAlphaRecursively(Landroid/view/View;F)V

    .line 2031
    return-void
.end method

.method gainFocus()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2422
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2423
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 2424
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2423
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2426
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_34

    .line 2427
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v1

    if-nez v1, :cond_34

    .line 2428
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "gaining focus"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2431
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v1, v3}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2432
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2436
    :cond_34
    invoke-virtual {p0, v3}, Lcom/lge/app/floating/FloatingWindow;->updateTitleBackground(Z)V

    .line 2438
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_37
    return-void
.end method

.method getActivity()Lcom/lge/app/floating/FloatableActivity;
    .registers 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    return-object v0
.end method

.method getBounceAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    .prologue
    .line 3277
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1e

    .line 3278
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "(mBounceAnimator == null) : create Bounce Animator"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 3280
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 3279
    invoke-virtual {p0, v1, v2}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3281
    .local v0, "r":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->createBounceAnimator(Landroid/graphics/Rect;)V

    .line 3283
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_1e
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mBounceAnimator:Landroid/animation/ValueAnimator;

    return-object v1
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v0}, Lcom/lge/app/floating/IFrameView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDockDirection()I
    .registers 2

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingDockWindow;->getDockDirection()I

    move-result v0

    :goto_a
    return v0

    .line 3491
    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method getDockState()I
    .registers 5

    .prologue
    .line 3481
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-nez v1, :cond_b

    .line 3482
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "mDockWindow == null"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    :cond_b
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingDockWindow;->getDockState()I

    move-result v0

    .line 3485
    .local v0, "state":I
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDockState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    return v0
.end method

.method getDockViewBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockViewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getDockWindow()Lcom/lge/app/floating/FloatingDockWindow;
    .registers 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    return-object v0
.end method

.method public getFloatingFrameView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1322
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFloatingTitleView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFrameView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v0}, Lcom/lge/app/floating/IFrameView;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getFrameViewInterface()Lcom/lge/app/floating/IFrameView;
    .registers 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    return-object v0
.end method

.method getFrameWindowH()I
    .registers 2

    .prologue
    .line 3648
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    return v0
.end method

.method getFrameWindowW()I
    .registers 2

    .prologue
    .line 3644
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    return v0
.end method

.method getFrameWindowX()I
    .registers 2

    .prologue
    .line 3636
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    return v0
.end method

.method getFrameWindowY()I
    .registers 2

    .prologue
    .line 3640
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    return v0
.end method

.method getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .registers 2

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mLayout:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    return-object v0
.end method

.method public getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .registers 3

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    .line 1383
    .local v0, "lp":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    if-eqz v0, :cond_b

    .line 1386
    .end local v0    # "lp":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    :goto_a
    return-object v0

    .restart local v0    # "lp":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    :cond_b
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    goto :goto_a
.end method

.method getOpacity()F
    .registers 3

    .prologue
    .line 2351
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2352
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 2353
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2352
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2354
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2356
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_12
    return v1

    :cond_13
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_12
.end method

.method public getRealWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v0}, Lcom/lge/app/floating/ITitleView;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getTitleViewInterface()Lcom/lge/app/floating/ITitleView;
    .registers 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    return-object v0
.end method

.method getTitleWindowH()I
    .registers 2

    .prologue
    .line 3664
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    return v0
.end method

.method getTitleWindowW()I
    .registers 2

    .prologue
    .line 3660
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    return v0
.end method

.method getTitleWindowX()I
    .registers 2

    .prologue
    .line 3652
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    return v0
.end method

.method getTitleWindowY()I
    .registers 2

    .prologue
    .line 3656
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    return v0
.end method

.method getTouchOffsetX()I
    .registers 2

    .prologue
    .line 3668
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->touchOffsetX:I

    return v0
.end method

.method getTouchOffsetY()I
    .registers 2

    .prologue
    .line 3672
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->touchOffsetY:I

    return v0
.end method

.method getUserOpacity()F
    .registers 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2369
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlphaSavedForLowProfile:F

    .line 2371
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v0

    goto :goto_8
.end method

.method getWindowName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    return-object v0
.end method

.method handleImeVisibilityChanged(Z)V
    .registers 8
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2522
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleImeVisibilityChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2524
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 2525
    const-string v2, "window is docked, so do not perform handleImeVisibilityChanged"

    .line 2524
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    :goto_23
    return-void

    .line 2531
    :cond_24
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 2532
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2531
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2533
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_40

    .line 2534
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_40

    .line 2535
    if-eqz p1, :cond_40

    .line 2536
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 2537
    const-string v2, "Window is not focusable... Do not handleImeVisibilityChanged to visible."

    .line 2536
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 2542
    :cond_40
    if-nez p1, :cond_59

    .line 2543
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mImeShouldBeReShown:Z

    if-eqz v1, :cond_53

    .line 2551
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/app/floating/FloatingWindow$2;

    invoke-direct {v2, p0}, Lcom/lge/app/floating/FloatingWindow$2;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    .line 2560
    const-wide/16 v4, 0x32

    .line 2551
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 2562
    :cond_53
    invoke-virtual {p0, v5, v4}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    .line 2563
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    goto :goto_23

    .line 2569
    :cond_59
    iput-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 2572
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mImeShouldBeReShown:Z

    if-eqz v1, :cond_61

    .line 2573
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mImeShouldBeReShown:Z

    .line 2575
    :cond_61
    invoke-virtual {p0, v4, v4}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    goto :goto_23
.end method

.method hideIme()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3116
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3125
    :cond_7
    :goto_7
    return-void

    .line 3119
    :cond_8
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideIme - dontUseIme : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-eqz v0, :cond_7

    .line 3121
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v1

    .line 3122
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 3121
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3123
    iput-boolean v3, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    goto :goto_7
.end method

.method initFloatingDockWindow()V
    .registers 4

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatableActivity;->getFloatingWindowManager()Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindowManager;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 1731
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_19

    .line 1732
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 1733
    const-string v2, "can\'t find service context, use application context instead"

    .line 1732
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1736
    :cond_19
    new-instance v1, Lcom/lge/app/floating/FloatingDockWindow;

    invoke-direct {v1, v0, p0}, Lcom/lge/app/floating/FloatingDockWindow;-><init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V

    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    .line 1737
    return-void
.end method

.method isAttached()Z
    .registers 2

    .prologue
    .line 3614
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsAttached:Z

    return v0
.end method

.method isInCorrectPositionAndSize(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 3135
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    if-ne v0, v1, :cond_18

    .line 3136
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    if-ne v0, v1, :cond_18

    .line 3135
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method isInLowProfile()Z
    .registers 2

    .prologue
    .line 3014
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    return v0
.end method

.method isInOverlay()Z
    .registers 2

    .prologue
    .line 2314
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    return v0
.end method

.method isPortrait()Z
    .registers 2

    .prologue
    .line 2490
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsPortrait:Z

    return v0
.end method

.method public isWindowDocked()Z
    .registers 5

    .prologue
    .line 3462
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-nez v1, :cond_b

    .line 3463
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "mDockWindow == null"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    :cond_b
    iget-boolean v1, p0, Lcom/lge/app/floating/FloatingWindow;->mNeedToDockOnStarting:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingDockWindow;->getDockState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    :cond_1c
    const/4 v0, 0x0

    .line 3467
    .local v0, "isDocked":Z
    :goto_1d
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isWindowDocked (using current state) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    return v0

    .line 3466
    .end local v0    # "isDocked":Z
    :cond_32
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method looseFocus()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2379
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2380
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "loosing focus"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    .line 2383
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2382
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2384
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_35

    .line 2385
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "become not focusable"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setNotFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2388
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v2, v5}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2390
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2393
    :cond_35
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-eqz v2, :cond_4a

    .line 2394
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "hideSoftInputFromWindow in loosing focus"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->hideIme()V

    .line 2396
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Lcom/lge/app/floating/FloatingFunctionReflect;->finishInputLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 2397
    iput-boolean v5, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 2400
    :cond_4a
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v2}, Lcom/lge/app/floating/IFrameView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2401
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_7a

    .line 2402
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2403
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_7a

    .line 2404
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearComposingText: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 2405
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearComposingText()V

    .line 2407
    :cond_7a
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v2, :cond_9d

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_9d

    .line 2408
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearFocus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2412
    :cond_9d
    invoke-virtual {p0, v5}, Lcom/lge/app/floating/FloatingWindow;->updateTitleBackground(Z)V

    .line 2414
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_a0
    return-void
.end method

.method public move(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    .line 1962
    return-void
.end method

.method moveInner(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1965
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/app/floating/FloatingWindow;->moveInner(IIZ)V

    .line 1966
    return-void
.end method

.method moveInner(IIZ)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1968
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p1, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 1969
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 1970
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->updateRealPositionAndSize()V

    .line 1971
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1972
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v2, :cond_40

    .line 1973
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    .line 1974
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1973
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1975
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    if-ne v2, v3, :cond_31

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    if-ne v2, v3, :cond_31

    if-eqz p3, :cond_40

    .line 1976
    :cond_31
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1977
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1978
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1981
    .end local v1    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_40
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1983
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    if-ne v2, v3, :cond_58

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    if-ne v2, v3, :cond_58

    if-eqz p3, :cond_67

    .line 1984
    :cond_58
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1985
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1986
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1989
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_67
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_77

    .line 1990
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1991
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1993
    :cond_77
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_87

    .line 1994
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1995
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1997
    :cond_87
    return-void
.end method

.method moveToTop()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2445
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v4, p0}, Lcom/lge/app/floating/FloatingWindowManager;->isTopWindow(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2446
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v5, "move to top"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    .line 2449
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2448
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2451
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-static {v4}, Lcom/lge/app/floating/FloatingFunctionReflect;->moveWindowTokenToTopEx(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2452
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v5, "sMoveWindowTokenToTopMethodEx called!"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2456
    .local v3, "v":Landroid/view/View;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2457
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2458
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2459
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2460
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2461
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2481
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_50
    :goto_50
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v4, p0}, Lcom/lge/app/floating/FloatingWindowManager;->notifyNewTopWindow(Lcom/lge/app/floating/FloatingWindow;)V

    .line 2483
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v4, :cond_5e

    .line 2484
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-interface {v4, p0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onMoveToTop(Lcom/lge/app/floating/FloatingWindow;)V

    .line 2487
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_5e
    return-void

    .line 2466
    .restart local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_5f
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v5, "no Match"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2468
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    iget-boolean v4, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v4, :cond_50

    .line 2471
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v4

    .line 2472
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2471
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2473
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2474
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_50
.end method

.method moveWindow(IIIIFF)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "moveX"    # I
    .param p4, "moveY"    # I
    .param p5, "deltaX"    # F
    .param p6, "deltaY"    # F

    .prologue
    .line 2034
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p3, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    .line 2035
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p4, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    .line 2036
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->updateRealPositionAndSize()V

    .line 2037
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2038
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v2, :cond_40

    .line 2039
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    .line 2040
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2039
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2041
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    if-ne v2, v3, :cond_2f

    .line 2042
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    if-eq v2, v3, :cond_40

    .line 2043
    :cond_2f
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2044
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2045
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-static {v2, v3, v4, p5, p6}, Lcom/lge/view/WindowManagerHelper;->doWindowMove(Landroid/view/View;FFFF)V

    .line 2048
    .end local v1    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_40
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2050
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    if-ne v2, v3, :cond_56

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    if-eq v2, v3, :cond_67

    .line 2051
    :cond_56
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2052
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2053
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-static {v2, v3, v4, p5, p6}, Lcom/lge/view/WindowManagerHelper;->doWindowMove(Landroid/view/View;FFFF)V

    .line 2056
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_67
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_77

    .line 2057
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2058
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2060
    :cond_77
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_87

    .line 2061
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2062
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameParamsBeforeHidden:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2064
    :cond_87
    return-void
.end method

.method onAttachedToWindowFrameView()V
    .registers 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFloatingWindowManager:Lcom/lge/app/floating/FloatingWindowManager;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindowManager;->handleLowProfileConf()V

    .line 1914
    return-void
.end method

.method onDocked()V
    .registers 3

    .prologue
    .line 3472
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v1, "onDocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mNeedToDockOnStarting:Z

    .line 3474
    return-void
.end method

.method prepareMoveWindow()V
    .registers 3

    .prologue
    .line 2006
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v1, "prepare move window"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/view/WindowManagerHelper;->prepareWindowMove(Landroid/view/View;)V

    .line 2008
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/view/WindowManagerHelper;->prepareWindowMove(Landroid/view/View;)V

    .line 2009
    return-void
.end method

.method public releaseDock(Ljava/lang/String;)V
    .registers 3
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 3026
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->releaseDockInner(Ljava/lang/String;Z)V

    .line 3027
    return-void
.end method

.method releaseDockInner(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "startedAsFloating"    # Z

    .prologue
    .line 3030
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseDock : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startedAsFloating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3032
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v0, p2}, Lcom/lge/app/floating/FloatingDockWindow;->requestUndock(Z)V

    .line 3047
    :cond_29
    return-void
.end method

.method requestFocusAndShowKeyboard(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3413
    if-eqz p1, :cond_18

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3414
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsInOverlayMode:Z

    if-eqz v2, :cond_19

    .line 3454
    :cond_18
    :goto_18
    return-void

    .line 3417
    :cond_19
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestFocusAndShowKeyboard. v="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3419
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3420
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "show soft input by request"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lge/app/floating/FloatingWindow$7;

    invoke-direct {v3, p0, p1}, Lcom/lge/app/floating/FloatingWindow$7;-><init>(Lcom/lge/app/floating/FloatingWindow;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18

    .line 3430
    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 3431
    .local v0, "oldListener":Landroid/view/View$OnFocusChangeListener;
    new-instance v2, Lcom/lge/app/floating/FloatingWindow$8;

    invoke-direct {v2, p0, v0}, Lcom/lge/app/floating/FloatingWindow$8;-><init>(Lcom/lge/app/floating/FloatingWindow;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3449
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 3450
    .local v1, "requestFocusResult":Z
    if-nez v1, :cond_18

    .line 3451
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_18
.end method

.method resize(II)V
    .registers 5
    .param p1, "wDiff"    # I
    .param p2, "hDiff"    # I

    .prologue
    .line 2091
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setSize(II)V

    .line 2092
    return-void
.end method

.method runVibrate()V
    .registers 4

    .prologue
    .line 3607
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "Run vibrate"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    iget-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3609
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3610
    .local v0, "vibrateTime":I
    const-string v1, "com.lge.app.floating.ExtraService.VIBRATE"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lge/app/floating/FloatingWindow;->runExtraService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3611
    return-void
.end method

.method setAttached(Z)V
    .registers 2
    .param p1, "mIsAttached"    # Z

    .prologue
    .line 3618
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindow;->mIsAttached:Z

    .line 3619
    return-void
.end method

.method setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1543
    if-eqz p1, :cond_5

    .line 1544
    invoke-static {p1}, Lcom/lge/app/floating/FloatingWindow;->setSurfaceViewBackgroundAsTransparentRecursively(Landroid/view/View;)V

    .line 1547
    :cond_5
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v0, p1}, Lcom/lge/app/floating/IFrameView;->setContentView(Landroid/view/View;)V

    .line 1548
    iget v0, p0, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 1549
    return-void
.end method

.method public setDockViewBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "dockViewBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3056
    if-nez p1, :cond_a

    .line 3057
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v1, "can\'t set null bitmap for dockview"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    :cond_9
    :goto_9
    return-void

    .line 3060
    :cond_a
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v1, "set custom bitmap for dockview"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow;->mDockViewBitmap:Landroid/graphics/Bitmap;

    .line 3062
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    if-eqz v0, :cond_9

    .line 3063
    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mDockWindow:Lcom/lge/app/floating/FloatingDockWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingDockWindow;->updateDockIcon()V

    goto :goto_9
.end method

.method setFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1744
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1750
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v0, :cond_16

    .line 1751
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1759
    :goto_15
    return-object p1

    .line 1753
    :cond_16
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    if-eqz v0, :cond_26

    .line 1754
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v1, "UseIme && OverIme do not allowed."

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1756
    :cond_26
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_15
.end method

.method public setLayoutLimit(Z)V
    .registers 3
    .param p1, "limit"    # Z

    .prologue
    .line 2586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(ZZ)V

    .line 2587
    return-void
.end method

.method public setLayoutLimit(ZZ)V
    .registers 12
    .param p1, "limit"    # Z
    .param p2, "requiresIme"    # Z

    .prologue
    .line 2605
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mLayoutLimit:Z

    if-ne v6, p1, :cond_5

    .line 2748
    :cond_4
    :goto_4
    return-void

    .line 2608
    :cond_5
    sget-object v6, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "set layout limit="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requiresIme="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2609
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2608
    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    iput-boolean p1, p0, Lcom/lge/app/floating/FloatingWindow;->mLayoutLimit:Z

    .line 2612
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2613
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v6

    .line 2614
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2613
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 2615
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_11f

    .line 2617
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->clone()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .line 2620
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, -0x201

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2623
    if-eqz p2, :cond_5b

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-nez v6, :cond_5b

    .line 2624
    invoke-virtual {p0, v3}, Lcom/lge/app/floating/FloatingWindow;->setFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2626
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2628
    :cond_5b
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f4

    .line 2630
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2631
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, -0xf1

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2632
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2648
    :goto_79
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2649
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2651
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v2, v6, v7

    .line 2652
    .local v2, "mFrameViewBottom":I
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v2, :cond_9c

    .line 2653
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2656
    :cond_9c
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/lge/app/floating/FloatingWindow;->mLayout:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    iget v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 2657
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 2656
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2660
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v6, :cond_e4

    .line 2661
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    .line 2662
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2661
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2664
    .local v5, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, -0x201

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2667
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2670
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_113

    .line 2671
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x10001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2676
    :goto_dd
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2745
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "mFrameViewBottom":I
    .end local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_e4
    :goto_e4
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2746
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    .line 2641
    :cond_f4
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, -0xf1

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2642
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2643
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 2644
    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2645
    iget v7, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iget v8, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2643
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_79

    .line 2673
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "mFrameViewBottom":I
    .restart local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_113
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 2674
    const v7, 0x7f060009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2673
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_dd

    .line 2680
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "mFrameViewBottom":I
    .end local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_11f
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    if-eqz v6, :cond_1c0

    .line 2681
    sget-object v6, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v7, "There is a saved layout params, use it"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/FloatingWindow;->setLayoutParam(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V

    .line 2683
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->updateRealPositionAndSize()V

    .line 2684
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2685
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2686
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2687
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2697
    :goto_142
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    if-nez v6, :cond_158

    .line 2698
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2699
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x10001

    and-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2701
    :cond_158
    const v6, 0x800033

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2704
    if-nez p2, :cond_17f

    .line 2705
    sget-object v6, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v7, "ime is no longer needed"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    invoke-virtual {p0, v3}, Lcom/lge/app/floating/FloatingWindow;->setNotFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2708
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/lge/app/floating/IFrameView;->setAsFocusable(Z)V

    .line 2709
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    if-eqz v6, :cond_17f

    .line 2710
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->hideIme()V

    .line 2712
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Lcom/lge/app/floating/FloatingFunctionReflect;->finishInputLocked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 2713
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mIsImeVisible:Z

    .line 2720
    :cond_17f
    iget-boolean v6, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v6, :cond_1bb

    .line 2721
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    .line 2722
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2721
    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 2724
    .restart local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    if-eqz v6, :cond_1dd

    .line 2725
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2726
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2727
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2728
    iget v6, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2737
    :goto_1a1
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2738
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x10001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2739
    const v6, 0x800033

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2741
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2743
    .end local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1bb
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/app/floating/FloatingWindow;->mSavedLayoutParams:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    goto/16 :goto_e4

    .line 2691
    :cond_1c0
    sget-object v6, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v7, "There is no saved layout params, maintain current position"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 2693
    .local v1, "frameLocation":[I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2694
    const/4 v6, 0x0

    aget v6, v1, v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2695
    const/4 v6, 0x1

    aget v6, v1, v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_142

    .line 2732
    .end local v1    # "frameLocation":[I
    .restart local v5    # "titleParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1dd
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 2733
    .local v4, "titleLocation":[I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2734
    const/4 v6, 0x0

    aget v6, v4, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2735
    const/4 v6, 0x1

    aget v6, v4, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1a1
.end method

.method setLayoutParam(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 5
    .param p1, "mLayout"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    .line 3626
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLayoutParam : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow;->mLayout:Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .line 3628
    return-void
.end method

.method setNotFocusableState(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 6
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1764
    const-string v0, ""

    .line 1765
    .local v0, "desc":Ljava/lang/String;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " NOT_FOCUSABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1767
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->dontUseIme:Z

    if-eqz v1, :cond_53

    .line 1768
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " !ALT_FOCUSABLE_IM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1778
    :goto_3e
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setNotFocusableState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    return-object p1

    .line 1771
    :cond_53
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->overIme:Z

    if-eqz v1, :cond_63

    .line 1772
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v2, "UseIme && OverIme do not allowed."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1774
    :cond_63
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ALT_FOCUSABLE_IM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method public setOnUpdateListener(Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    .prologue
    .line 2758
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    .line 2759
    return-void
.end method

.method public setOpacity(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 2328
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(FZ)V

    .line 2329
    return-void
.end method

.method public setOverlay(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 2305
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(ZZ)V

    .line 2306
    return-void
.end method

.method public setSize(II)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2104
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set size to ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p1, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    .line 2107
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iput p2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    .line 2108
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->updateRealPositionAndSize()V

    .line 2110
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2111
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    .line 2112
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2111
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2114
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    if-ne v2, v3, :cond_4f

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    if-eq v2, v3, :cond_61

    .line 2115
    :cond_4f
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2116
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2118
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->clearLayoutLimit()V

    .line 2119
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 2122
    :cond_61
    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mIsTitleInSeparateWindow:Z

    if-eqz v2, :cond_7e

    .line 2123
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    if-eqz v2, :cond_7f

    .line 2124
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/lge/app/floating/FloatingWindow$1;

    invoke-direct {v3, p0}, Lcom/lge/app/floating/FloatingWindow$1;-><init>(Lcom/lge/app/floating/FloatingWindow;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2150
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_7e
    :goto_7e
    return-void

    .line 2139
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_7f
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    .line 2140
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2139
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 2141
    .local v1, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    if-ne v2, v3, :cond_95

    .line 2142
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    if-eq v2, v3, :cond_7e

    .line 2143
    :cond_95
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2144
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2145
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_7e
.end method

.method public setTalkbackAppName(Ljava/lang/String;)V
    .registers 9
    .param p1, "customAppName"    # Ljava/lang/String;

    .prologue
    .line 1925
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1926
    .local v3, "talkbackName":Ljava/lang/String;
    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_12

    .line 1949
    :cond_11
    :goto_11
    return-void

    .line 1930
    :cond_12
    if-eqz p1, :cond_49

    .line 1931
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1931
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1933
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "talkback Custom App name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iput-object p1, p0, Lcom/lge/app/floating/FloatingWindow;->mAppName:Ljava/lang/String;

    goto :goto_11

    .line 1936
    :cond_49
    const-string v1, ""

    .line 1938
    .local v1, "appName":Ljava/lang/String;
    :try_start_4b
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v4}, Lcom/lge/app/floating/FloatableActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1939
    iget-object v5, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1940
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/lge/app/floating/FloatingWindow;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v4}, Lcom/lge/app/floating/FloatableActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1941
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_a0

    move-result-object v1

    .line 1945
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_6a
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1946
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "talkback Package App name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    iput-object v1, p0, Lcom/lge/app/floating/FloatingWindow;->mAppName:Ljava/lang/String;

    goto/16 :goto_11

    .line 1942
    :catch_a0
    move-exception v2

    .line 1943
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a
.end method

.method setTouchOffsetX(F)V
    .registers 3
    .param p1, "touchOffsetX"    # F

    .prologue
    .line 3676
    float-to-int v0, p1

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow;->touchOffsetX:I

    .line 3677
    return-void
.end method

.method setTouchOffsetY(F)V
    .registers 3
    .param p1, "touchOffsetY"    # F

    .prologue
    .line 3680
    float-to-int v0, p1

    iput v0, p0, Lcom/lge/app/floating/FloatingWindow;->touchOffsetY:I

    .line 3681
    return-void
.end method

.method titleShouldBeHidden()Z
    .registers 2

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-eqz v0, :cond_2e

    .line 1572
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    if-eqz v0, :cond_2e

    .line 1573
    :cond_16
    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsMoving:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/lge/app/floating/FloatingWindow;->mIsResizing:Z

    if-nez v0, :cond_2e

    .line 1574
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v0}, Lcom/lge/app/floating/ITitleView;->isSliderOnTracking()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1571
    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public updateLayoutParams(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    .line 1399
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParams(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V

    .line 1400
    return-void
.end method

.method public updateLayoutParams(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V
    .registers 6
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    .param p2, "preferSavedRegion"    # Z

    .prologue
    .line 1417
    sget-object v0, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateLayoutParams to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V

    .line 1419
    return-void
.end method

.method updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    .prologue
    .line 1529
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/app/floating/FloatingWindow;->updateLayoutParamsInner(Lcom/lge/app/floating/FloatingWindow$LayoutParams;Z)V

    .line 1530
    return-void
.end method

.method updateRealPositionAndSize()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1579
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mFrameView:Lcom/lge/app/floating/IFrameView;

    invoke-interface {v2}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 1580
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v2}, Lcom/lge/app/floating/ITitleView;->measureAndGetHeight()I

    move-result v1

    .line 1582
    .local v1, "titleHeight":I
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 1583
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "Cannot updateRealPositionAndSize - mLayout == null"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_1b
    :goto_1b
    return-void

    .line 1586
    :cond_1c
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowX:I

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    .line 1587
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowW:I

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    .line 1588
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowH:I

    .line 1591
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->titleShouldBeHidden()Z

    move-result v2

    if-nez v2, :cond_50

    iget-boolean v2, p0, Lcom/lge/app/floating/FloatingWindow;->mUseSeparateWindow:Z

    if-nez v2, :cond_50

    .line 1592
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    if-eqz v2, :cond_86

    .line 1593
    :cond_50
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    .line 1594
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 1595
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1594
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    .line 1603
    :goto_69
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlappingTitle:Z

    if-eqz v2, :cond_a2

    .line 1604
    iget v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    .line 1612
    :goto_75
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->fullScreen:Z

    if-eqz v2, :cond_1b

    .line 1613
    iput v5, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowX:I

    .line 1614
    iput v5, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    .line 1615
    iput v4, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowW:I

    .line 1616
    iput v4, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    goto :goto_1b

    .line 1597
    :cond_86
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowY:I

    .line 1598
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    add-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 1599
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1598
    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->frameWindowH:I

    goto :goto_69

    .line 1606
    :cond_a2
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/app/floating/FloatingWindow;->titleWindowY:I

    goto :goto_75
.end method

.method updateTitleBackground(Z)V
    .registers 6
    .param p1, "focused"    # Z

    .prologue
    .line 3095
    .line 3096
    const-string v2, "tag_title_layout"

    invoke-virtual {p0, v2}, Lcom/lge/app/floating/FloatingWindow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 3095
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3098
    .local v1, "rl":Landroid/widget/RelativeLayout;
    if-nez v1, :cond_12

    .line 3099
    sget-object v2, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    const-string v3, "Cannot updateTitleBackground - Fail to findViewWithTag"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    :goto_11
    return-void

    .line 3102
    :cond_12
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3103
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2f

    .line 3104
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mResources:Landroid/content/res/Resources;

    .line 3105
    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3104
    :goto_27
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3106
    iget-object v2, p0, Lcom/lge/app/floating/FloatingWindow;->mTitleView:Lcom/lge/app/floating/ITitleView;

    invoke-interface {v2}, Lcom/lge/app/floating/ITitleView;->updateDividers()V

    .line 3108
    :cond_2f
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_11

    .line 3105
    :cond_34
    const/16 v2, 0xff

    goto :goto_27
.end method

.method updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 2068
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    .line 2069
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in updateViewLayoutInSafety - mWindowManager : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2068
    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :goto_1e
    return-void

    .line 2074
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingWindow;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_1e

    .line 2075
    :catch_27
    move-exception v0

    .line 2076
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in updateViewLayout - view : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    sget-object v1, Lcom/lge/app/floating/FloatingWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method
