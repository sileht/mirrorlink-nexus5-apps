.class Lcom/lge/dockservice/DockWindowService$DockView;
.super Landroid/widget/ImageView;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mClient:Lcom/lge/dockservice/IBaseDockWindow;

.field public mCurrentDockPosX:I

.field public mCurrentDockPosY:I

.field private mDockDirection:I

.field private mDockViewTouchOffsetX:I

.field private mDockViewTouchOffsetY:I

.field private mDownX:I

.field private mDownY:I

.field private mFingerOffsetX:I

.field private mFingerOffsetY:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHasTouchDownConfirmed:Z

.field private final mIconSize:[I

.field private mIsInLowProfile:Z

.field private mPackageName:Ljava/lang/String;

.field private mRawDockIcon:Landroid/graphics/Bitmap;

.field private mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

.field private mStartedAsDock:Z

.field private mState:I

.field mX_Landscape:I

.field mX_Portrate:I

.field mY_Landscape:I

.field mY_Portrate:I

.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/IBaseDockWindow;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    .registers 16
    .param p2, "token"    # Lcom/lge/dockservice/IBaseDockWindow;
    .param p3, "packagename"    # Ljava/lang/String;
    .param p4, "dockIcon"    # Landroid/graphics/Bitmap;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "initToShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 970
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    .line 971
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 952
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    .line 953
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 954
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 955
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 956
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    .line 957
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    .line 958
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    .line 959
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    .line 960
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 963
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    .line 965
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 966
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    .line 967
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    .line 968
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    .line 1397
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1398
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    .line 1400
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    .line 1401
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    .line 1403
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    .line 1404
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    .line 972
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "init DockView"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p1, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 975
    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    .line 976
    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    .line 977
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    .line 978
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v6

    .line 979
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v7

    .line 981
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0x0

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    .line 982
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0x0

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    .line 983
    iput-object p4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mRawDockIcon:Landroid/graphics/Bitmap;

    .line 984
    invoke-direct {p0, p5, p6}, Lcom/lge/dockservice/DockWindowService$DockView;->setDockImageToWindow(II)V

    .line 987
    new-instance v3, Lcom/lge/dockservice/TransitionAnimator;

    invoke-direct {v3}, Lcom/lge/dockservice/TransitionAnimator;-><init>()V

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    .line 988
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/lge/dockservice/TransitionAnimator;->setInterpolator(Landroid/view/animation/DecelerateInterpolator;)V

    .line 989
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/dockservice/TransitionAnimator;->setDuration(I)V

    .line 992
    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, "talkbackName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 995
    .local v0, "appName":Ljava/lang/String;
    :try_start_b4
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v3}, Lcom/lge/dockservice/IBaseDockWindow;->getAppName()Ljava/lang/String;
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b9} :catch_da

    move-result-object v0

    .line 999
    :goto_ba
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1003
    if-eqz p7, :cond_df

    .line 1004
    :try_start_d6
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->awake()V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_d9} :catch_e3

    .line 1016
    :goto_d9
    return-void

    .line 996
    :catch_da
    move-exception v1

    .line 997
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_ba

    .line 1007
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_df
    :try_start_df
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_d9

    .line 1010
    :catch_e3
    move-exception v1

    .line 1011
    .restart local v1    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception occured : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1013
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->removeDockViewWindow()V

    .line 1014
    throw v1
.end method

.method static synthetic access$0(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/dockservice/DockWindowService$DockView;II)V
    .registers 3

    .prologue
    .line 1569
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(II)V

    return-void
.end method

.method static synthetic access$11(Lcom/lge/dockservice/DockWindowService$DockView;II)V
    .registers 3

    .prologue
    .line 1550
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    return-void
.end method

.method static synthetic access$12(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .registers 2

    .prologue
    .line 1635
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .registers 2

    .prologue
    .line 1397
    iput-boolean p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    return-void
.end method

.method static synthetic access$3(Lcom/lge/dockservice/DockWindowService$DockView;)I
    .registers 2

    .prologue
    .line 960
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/dockservice/DockWindowService$DockView;I)V
    .registers 2

    .prologue
    .line 960
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    return-void
.end method

.method static synthetic access$5(Lcom/lge/dockservice/DockWindowService$DockView;IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/dockservice/DockWindowService$DockView;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V

    return-void
.end method

.method static synthetic access$7(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/TransitionAnimator;
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/dockservice/DockWindowService$DockView;)I
    .registers 2

    .prologue
    .line 953
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    return v0
.end method

.method private attachToWall(Z)V
    .registers 8
    .param p1, "realMoving"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1636
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attachToWall for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1638
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1639
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dock view x = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6d

    .line 1641
    if-eqz p1, :cond_65

    .line 1642
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    .line 1658
    :goto_64
    return-void

    .line 1645
    :cond_65
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    goto :goto_64

    .line 1647
    :cond_6d
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    .line 1648
    if-eqz p1, :cond_7a

    .line 1649
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v5, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto :goto_64

    .line 1652
    :cond_7a
    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    goto :goto_64

    .line 1655
    :cond_7d
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dock to invalid direction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(this means undock)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64
.end method

.method private awake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1294
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "awake dock"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V

    .line 1296
    return-void
.end method

.method private awake(IIZ)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "adjustFingerOffset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1300
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "awake dock to ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1304
    :try_start_2b
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_94

    .line 1309
    :goto_32
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v5

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v6

    add-int/2addr v3, p2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v2

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1310
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1311
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dock ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) awaken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1313
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1314
    if-eqz p3, :cond_88

    .line 1315
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    sub-int p1, v2, v3

    .line 1316
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v6

    sub-int v2, p2, v2

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    sub-int p2, v2, v3

    .line 1318
    :cond_88
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1319
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1321
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1322
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1323
    invoke-direct {p0, p0, v1}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1324
    return-void

    .line 1305
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_94
    move-exception v0

    .line 1306
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException in awake: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private handleDockBackGround()V
    .registers 2

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1202
    return-void
.end method

.method private handleDockBackGround(I)V
    .registers 4
    .param p1, "dockDirection"    # I

    .prologue
    .line 1184
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 1185
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackgroundResource(I)V

    .line 1196
    :goto_8
    return-void

    .line 1187
    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 1188
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackgroundResource(I)V

    goto :goto_8

    .line 1190
    :cond_13
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1b

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1194
    :cond_1b
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exceptional case occured in handleDockBackGround."

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private isInDockArea()I
    .registers 7

    .prologue
    .line 1379
    .line 1380
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1381
    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1382
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 1383
    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 1379
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v0

    return v0
.end method

.method private isInDockArea(IIII)I
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1387
    const/4 v1, -0x1

    .line 1390
    .local v1, "isInDockArea":I
    :try_start_1
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->isInDockArea(Landroid/graphics/Rect;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v1

    .line 1394
    :goto_c
    return v1

    .line 1391
    :catch_d
    move-exception v0

    .line 1392
    .local v0, "exception":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured in isInDockArea : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private isInSystemArea(I)I
    .registers 7
    .param p1, "currentY"    # I

    .prologue
    const/4 v2, 0x1

    .line 1538
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1539
    .local v1, "statusBarHeight":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1540
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1541
    if-ge p1, v1, :cond_23

    .line 1547
    :goto_22
    return v2

    .line 1544
    :cond_23
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v3, v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_2e

    .line 1545
    const/4 v2, 0x2

    goto :goto_22

    .line 1547
    :cond_2e
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private moveTo(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1551
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "move to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1553
    :cond_30
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ensure slideTo animation ends before moveTo"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->cancel()V

    .line 1557
    :cond_3e
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1558
    .local v0, "dockviewlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1559
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1561
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1562
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1563
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1567
    return-void
.end method

.method private removeDockViewWindow()V
    .registers 5

    .prologue
    .line 1018
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeDockViewWindow"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :try_start_9
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 1027
    :goto_1d
    return-void

    .line 1023
    :catch_1e
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured in removeDockViewWindow : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private setDockImageToWindow(II)V
    .registers 11
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v7, 0x1

    .line 1031
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "set Dock Image To Window"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mRawDockIcon:Landroid/graphics/Bitmap;

    .line 1033
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1034
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1032
    invoke-static {v3, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1035
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1037
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1038
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1039
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround()V

    .line 1041
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1042
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DockView: for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1054
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1055
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1056
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v7

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1057
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1059
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1061
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-direct {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInSystemArea(I)I

    move-result v2

    .line 1062
    .local v2, "mIsInSystemArea":I
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1064
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-ne v2, v7, :cond_bb

    .line 1065
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1073
    :goto_8d
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1074
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1075
    const v3, 0x10108

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1078
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1082
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1083
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1084
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1085
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    return-void

    .line 1067
    :cond_bb
    const/4 v3, 0x2

    if-ne v2, v3, :cond_c3

    .line 1068
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8d

    .line 1071
    :cond_c3
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8d
.end method

.method private sleep()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1281
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sleep dock"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1283
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dock ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) go to sleep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1286
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v1, v2}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V

    .line 1287
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1288
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1289
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1290
    return-void
.end method

.method private slideTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1570
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1571
    return-void
.end method

.method private slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "listener"    # Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .prologue
    .line 1574
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "slideTo ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1577
    :cond_4e
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preceding slideTo animation ends"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->end()V

    .line 1580
    :cond_5c
    move-object v0, p3

    .line 1581
    .local v0, "animatorListener":Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1582
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1583
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1584
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v2, v3, p1}, Lcom/lge/dockservice/TransitionAnimator;->setRangeX(II)V

    .line 1585
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v2, v3, p2}, Lcom/lge/dockservice/TransitionAnimator;->setRangeY(II)V

    .line 1586
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    new-instance v3, Lcom/lge/dockservice/DockWindowService$DockView$4;

    invoke-direct {v3, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView$4;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    invoke-virtual {v2, v3}, Lcom/lge/dockservice/TransitionAnimator;->setUpdateListener(Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1632
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->start()V

    .line 1633
    return-void
.end method

.method private updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1695
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1696
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in updateViewLayoutInSafety - mWindowManager : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :goto_24
    return-void

    .line 1700
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 1701
    :catch_2f
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in updateViewLayout - view : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method


# virtual methods
.method public applyLowProfile(Z)V
    .registers 13
    .param p1, "isEntering"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1095
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "applyLowProfile... isEntering : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-eqz v4, :cond_2c

    if-eqz p1, :cond_2c

    .line 1097
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock views are already in low profile"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :goto_2b
    return-void

    .line 1100
    :cond_2c
    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-nez v4, :cond_3c

    if-nez p1, :cond_3c

    .line 1101
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock views are already not in low profile"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 1105
    :cond_3c
    if-eqz p1, :cond_50

    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-eqz v4, :cond_50

    .line 1106
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v6, "entering low profile while dockview is being touched... do like touch cancel"

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0, v9}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    .line 1110
    iput-boolean v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1113
    :cond_50
    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    if-eq v4, v10, :cond_71

    .line 1114
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ignore applyLowProfile("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when dock view is not in dock state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 1118
    :cond_71
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_a4

    .line 1119
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_85

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1121
    :cond_85
    :try_start_85
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_113

    .line 1125
    :goto_8a
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "on anim cancel by "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_12e

    const-string v4, "enter"

    :goto_99
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_a4
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_132

    const-string v4, "enter"

    :goto_ac
    invoke-static {v6, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    move-object v3, p0

    .line 1131
    .local v3, "targetView":Landroid/view/View;
    if-eqz p1, :cond_145

    move v2, v5

    .line 1132
    .local v2, "startAlpha":F
    :goto_b3
    if-eqz p1, :cond_148

    .line 1133
    .local v1, "endAlpha":F
    :goto_b5
    new-array v4, v10, [F

    aput v2, v4, v8

    aput v1, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1134
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1135
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1136
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/lge/dockservice/DockWindowService$DockView$1;

    invoke-direct {v5, p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView$1;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1163
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/lge/dockservice/DockWindowService$DockView$2;

    invoke-direct {v5, p0, v3, v1}, Lcom/lge/dockservice/DockWindowService$DockView$2;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1175
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1176
    iput-boolean p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    .line 1177
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onAnimationStart / mIsInLowProfile : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1122
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    .end local v3    # "targetView":Landroid/view/View;
    :catch_113
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 1125
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12e
    const-string v4, "exit"

    goto/16 :goto_99

    .line 1129
    :cond_132
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "exit low profile for dockview "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_ac

    .restart local v3    # "targetView":Landroid/view/View;
    :cond_145
    move v2, v1

    .line 1131
    goto/16 :goto_b3

    .restart local v2    # "startAlpha":F
    :cond_148
    move v1, v5

    .line 1132
    goto/16 :goto_b5
.end method

.method public killdock()V
    .registers 5

    .prologue
    .line 1228
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute killdock for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
    invoke-static {v1, p0}, Lcom/lge/dockservice/DockWindowService;->access$4(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    .line 1237
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$9(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$9(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v1

    if-ne v1, p0, :cond_33

    .line 1238
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$5(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 1241
    :cond_33
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1244
    :try_start_41
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v1, v2}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 1248
    :goto_48
    return-void

    .line 1245
    :catch_49
    move-exception v0

    .line 1246
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "killdock : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public moveToTop()V
    .registers 9

    .prologue
    .line 1665
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "move "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DockView to top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1668
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$11()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 1670
    :try_start_2a
    # getter for: Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$11()Ljava/lang/reflect/Method;

    move-result-object v3

    # getter for: Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$12()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sMoveWindowTokenToTopMethodEx called!"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1673
    .local v2, "v":Landroid/view/View;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1674
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1675
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1676
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1677
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1678
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6f} :catch_75

    .line 1691
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "v":Landroid/view/View;
    :goto_6f
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-static {v3, p0}, Lcom/lge/dockservice/DockWindowService;->access$5(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 1692
    return-void

    .line 1681
    :catch_75
    move-exception v3

    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cannot move to top using moveWindowTokenToTopMethod."

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 1688
    :cond_80
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1689
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6f
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1208
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAttachedToWindow DockView : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    if-ne v1, v4, :cond_22

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-eq v1, v4, :cond_37

    .line 1211
    :cond_22
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1212
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1213
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1216
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_37
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    invoke-static {v1, p0, v5}, Lcom/lge/dockservice/DockWindowService;->access$8(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 1217
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v5, v1, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 1218
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 1219
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 1223
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 1224
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDetachedFromWindow DockView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1407
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onTouchEvent : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-eqz v5, :cond_3e

    .line 1410
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ignore touch event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while in low profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_3d
    return v3

    .line 1414
    :cond_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_47

    move v3, v4

    .line 1415
    goto :goto_3d

    .line 1418
    :cond_47
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-eqz v5, :cond_50

    .line 1422
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1427
    :cond_50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_b3

    .line 1428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    .line 1429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    .line 1430
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1449
    :cond_69
    :goto_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1de

    goto :goto_3d

    .line 1451
    :pswitch_71
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ACTION_DOWN - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDockDirection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iput-boolean v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1453
    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    if-eq v4, v9, :cond_9d

    .line 1454
    iput-boolean v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    .line 1458
    :cond_9d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    .line 1459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    .line 1462
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    .line 1464
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v3, v4, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    goto :goto_3d

    .line 1433
    :cond_b3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1434
    .local v1, "xMove":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1435
    .local v2, "yMove":I
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1436
    .local v0, "slop":I
    if-gt v1, v0, :cond_dc

    if-le v2, v0, :cond_e6

    .line 1437
    :cond_dc
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "prevent send touch event to guestureDetector"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 1440
    :cond_e6
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1441
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mGestureDetector consumed touch event"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 1467
    .end local v0    # "slop":I
    .end local v1    # "xMove":I
    .end local v2    # "yMove":I
    :pswitch_f9
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-nez v5, :cond_108

    .line 1468
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignore touch move without preceding touch down"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 1471
    :cond_108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->isInSystemArea(I)I

    move-result v5

    if-lez v5, :cond_121

    .line 1472
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "In system Area. Do not handle move."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 1478
    :cond_121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    .line 1479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    .line 1480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    .line 1477
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1484
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1487
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    if-eqz v5, :cond_159

    .line 1488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto/16 :goto_3d

    .line 1491
    :cond_159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v5, v4

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v6, v6, v3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto/16 :goto_3d

    .line 1497
    :pswitch_17b
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-nez v5, :cond_18a

    .line 1498
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignore touch up without preceding touch down"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 1501
    :cond_18a
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DockView ACTION_UP"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    .line 1507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    .line 1508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    .line 1504
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1511
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1514
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    if-ne v5, v9, :cond_1cc

    .line 1515
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Request Undock"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p0, v5, v6}, Lcom/lge/dockservice/DockWindowService$DockView;->undock(II)V

    .line 1525
    :goto_1c6
    iput-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1526
    iput-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    goto/16 :goto_3d

    .line 1520
    :cond_1cc
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Keep dock state"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-direct {p0, v4}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    .line 1523
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    invoke-static {v5, p0, v3}, Lcom/lge/dockservice/DockWindowService;->access$8(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_1c6

    .line 1449
    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_71
        :pswitch_17b
        :pswitch_f9
        :pswitch_17b
    .end packed-switch
.end method

.method public undock(II)V
    .registers 8
    .param p1, "requestedUndockPositionX"    # I
    .param p2, "requestedUndockPositionY"    # I

    .prologue
    .line 1251
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "execute undock at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :try_start_20
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_49

    .line 1258
    :goto_23
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$9(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$9(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v2

    if-ne v2, p0, :cond_39

    .line 1259
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/dockservice/DockWindowService;->access$5(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)V

    .line 1263
    :cond_39
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1265
    :try_start_3c
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V

    .line 1266
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v2, p1, p2}, Lcom/lge/dockservice/IBaseDockWindow;->onFinishingUndockAt(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_48} :catch_4e

    .line 1277
    :goto_48
    return-void

    .line 1254
    :catch_49
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23

    .line 1267
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4e
    move-exception v0

    .line 1268
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured in undock : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SendBroadCast to force unDock and stop DockWindowService."

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.FORCE_UNDOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "windowname"

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const-string v2, "posX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    const-string v2, "posY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1275
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService;->stopSelf()V

    goto :goto_48
.end method

.method public undockBySingleTabUp()V
    .registers 10

    .prologue
    .line 1327
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "undockBySingleTabUp"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const/4 v0, 0x0

    .line 1331
    .local v0, "clientRect":Landroid/graphics/Rect;
    :try_start_a
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v6}, Lcom/lge/dockservice/IBaseDockWindow;->getClientRect()Landroid/graphics/Rect;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_77

    move-result-object v0

    .line 1339
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1340
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v6}, Lcom/lge/dockservice/DockWindowService;->access$7(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1341
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1342
    .local v5, "screenwidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1343
    .local v1, "clientWidth":I
    sub-int v6, v5, v1

    div-int/lit8 v4, v6, 0x2

    .line 1346
    .local v4, "newPosX":I
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Start slideTo animation ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    new-instance v7, Lcom/lge/dockservice/DockWindowService$DockView$3;

    invoke-direct {v7, p0, v4}, Lcom/lge/dockservice/DockWindowService$DockView$3;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;I)V

    invoke-direct {p0, v4, v6, v7}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1367
    .end local v1    # "clientWidth":I
    .end local v2    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "newPosX":I
    .end local v5    # "screenwidth":I
    :goto_76
    return-void

    .line 1332
    :catch_77
    move-exception v3

    .line 1333
    .local v3, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception occured in undockBySingTapUp : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_76
.end method

.method updateDockIconImage(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1089
    .line 1090
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1091
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$6(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 1089
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1092
    return-void
.end method
