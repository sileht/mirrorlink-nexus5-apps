.class Lcom/lge/app/floating/FloatingDockWindow;
.super Lcom/lge/dockservice/BaseDockWindow;
.source "FloatingDockWindow.java"


# static fields
.field private static final RES_PACKAGE_NAME:Ljava/lang/String; = "com.lge.app.floating.res"

.field private static final TAG:Ljava/lang/String; = "FloatingDockWindow"


# instance fields
.field public appName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

.field private mFwm:Lcom/lge/app/floating/FloatingWindowManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsTitleHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floatingWindow"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2}, Lcom/lge/app/floating/FloatingWindow;->getWindowName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lge/dockservice/BaseDockWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput-object v2, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    .line 32
    invoke-static {v2}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFwm:Lcom/lge/app/floating/FloatingWindowManager;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mIsTitleHidden:Z

    .line 35
    iput-object p1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    .line 37
    new-instance v0, Lcom/lge/app/floating/FloatingDockWindow$1;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/FloatingDockWindow$1;-><init>(Lcom/lge/app/floating/FloatingDockWindow;)V

    .line 45
    .local v0, "touchListener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lge/app/floating/IFrameView;->addListenerToDefaultTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    iget-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lge/app/floating/ITitleView;->addListenerToDefaultTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    .line 48
    iget-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mAppName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/app/floating/FloatingDockWindow;->appName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lge/app/floating/FloatingDockWindow;)Lcom/lge/app/floating/FloatingWindowManager;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFwm:Lcom/lge/app/floating/FloatingWindowManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/app/floating/FloatingDockWindow;)Lcom/lge/app/floating/FloatingWindow;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    const-string v0, "FloatingDockWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/app/floating/FloatingDockWindow;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPadding()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 161
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 162
    .local v0, "frameViewPadding":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 163
    .local v2, "pLeft":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 164
    .local v3, "pRight":I
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 165
    .local v4, "pTop":I
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 166
    .local v1, "pBottom":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method public getClientRect()Landroid/graphics/Rect;
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 53
    iget-object v9, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v9}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "frameView":Landroid/view/View;
    iget-object v9, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v9}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v6

    .line 56
    .local v6, "titleView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 57
    .local v1, "frameParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 59
    .local v5, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    .local v8, "width":I
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v4, v9, v10

    .line 62
    .local v4, "height":I
    new-array v7, v13, [I

    .line 63
    .local v7, "titleViewLocation":[I
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    new-array v3, v13, [I

    .line 65
    .local v3, "frameViewLocation":[I
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    .line 67
    aget v9, v3, v11

    .line 68
    aget v10, v7, v12

    .line 69
    aget v11, v3, v11

    add-int/2addr v11, v8

    .line 70
    aget v12, v7, v12

    add-int/2addr v12, v4

    .line 66
    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v0, "clientRect":Landroid/graphics/Rect;
    const-string v9, "FloatingDockWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getClientRect : ( "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public getDockIconBitmap()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f060010

    const v9, 0x7f06000f

    const/4 v10, 0x1

    .line 227
    iget-object v7, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v6

    .line 228
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->getDockViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 229
    .local v2, "appIconBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_92

    .line 230
    iget-object v7, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 232
    .local v1, "appIcon":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v1, :cond_81

    .line 233
    const-string v7, "FloatingDockWindow"

    const-string v8, "generate dummy dock preview"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-static {v9, v11, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 238
    const v7, -0x333301

    invoke-virtual {v2, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 252
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appIcon":Landroid/graphics/drawable/BitmapDrawable;
    :goto_3d
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 253
    .local v5, "paint":Landroid/graphics/Paint;
    const v7, 0x7f07000a

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 254
    .local v4, "dockPreviewAlpha":F
    const-string v7, "FloatingDockWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dockPreviewAlpha: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 257
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2, v12, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    const-string v7, "FloatingDockWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "dock preview: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v2

    .line 241
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "dockPreviewAlpha":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_81
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 242
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 243
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 241
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    goto :goto_3d

    .line 248
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appIcon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_92
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 249
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 247
    invoke-static {v2, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3d
.end method

.method public getTouchOffsetX()I
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getTouchOffsetX()I

    move-result v0

    return v0
.end method

.method public getTouchOffsetY()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getTouchOffsetY()I

    move-result v0

    return v0
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/lge/dockservice/BaseDockWindow;->handleTouch(Landroid/view/MotionEvent;)V

    .line 271
    return-void
.end method

.method public isCleanView()I
    .registers 8

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "mIsCleanView":I
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v1

    .line 211
    .local v1, "mTitleView":Lcom/lge/app/floating/ITitleView;
    invoke-interface {v1}, Lcom/lge/app/floating/ITitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 212
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {v1}, Lcom/lge/app/floating/ITitleView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v1}, Lcom/lge/app/floating/ITitleView;->getPaddingTop()I

    move-result v5

    sub-int v3, v4, v5

    .line 213
    .local v3, "titleViewHeight":I
    const-string v4, "FloatingDockWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "titleViewHeight : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v4

    iget-boolean v4, v4, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-eqz v4, :cond_3f

    .line 215
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v4}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 216
    const/4 v0, 0x0

    .line 222
    :cond_3f
    :goto_3f
    return v0

    .line 219
    :cond_40
    move v0, v3

    goto :goto_3f
.end method

.method public onDockCompleted(I)V
    .registers 9
    .param p1, "dockDirection"    # I

    .prologue
    .line 181
    const-string v4, "FloatingDockWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDockCompleted. Direction : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingDockWindow;->getClientRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 186
    .local v2, "r":Landroid/graphics/Rect;
    if-nez v2, :cond_22

    .line 187
    const-string v4, "FloatingDockWindow"

    const-string v5, "Exception in onDockCompleted : getClientRect == null"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_21
    :goto_21
    return-void

    .line 190
    :cond_22
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 191
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    .local v0, "mDisplaymetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int v3, v4, v5

    .line 195
    .local v3, "screenWidth":I
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4b

    .line 196
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v3, v5}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    goto :goto_21

    .line 198
    :cond_4b
    const/4 v4, 0x2

    if-ne p1, v4, :cond_21

    .line 199
    iget-object v4, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    neg-int v5, v3

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/app/floating/FloatingWindow;->moveInner(II)V

    goto :goto_21
.end method

.method public onEnterDockArea()V
    .registers 3

    .prologue
    .line 79
    const-string v0, "FloatingDockWindow"

    const-string v1, "onEnterDockArea..  enterLowProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->onDocked()V

    .line 81
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/app/floating/FloatingDockWindow$2;

    invoke-direct {v1, p0}, Lcom/lge/app/floating/FloatingDockWindow$2;-><init>(Lcom/lge/app/floating/FloatingDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public onFinishingUndockAt(II)V
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x0

    .line 114
    const-string v5, "FloatingDockWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onFinishingUndockAt.. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingDockWindow;->getClientRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 118
    .local v4, "r":Landroid/graphics/Rect;
    if-nez v4, :cond_2d

    .line 119
    const-string v5, "FloatingDockWindow"

    const-string v6, "Cannot onFinishingUndockAt - Fail to getClientRect == null"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_2c
    return-void

    .line 122
    :cond_2d
    const-string v5, "FloatingDockWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "client rect is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    .line 125
    .local v2, "fParams":Lcom/lge/app/floating/FloatingWindow$LayoutParams;
    if-nez v2, :cond_51

    .line 126
    const-string v5, "FloatingDockWindow"

    const-string v6, "Cannot onFinishingUndockAt - Fail to getLayoutParams() == null"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 129
    :cond_51
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingDockWindow;->getClientPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v5

    .line 130
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->getTitleView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr p2, v5

    .line 131
    const-string v7, "FloatingDockWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "isCleanView() : "

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingDockWindow;->isCleanView()I

    move-result v5

    if-lez v5, :cond_b5

    const/4 v5, 0x1

    :goto_73
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mIsTitleHidden:Z

    if-eqz v5, :cond_99

    .line 133
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mFloatingWindow:Lcom/lge/app/floating/FloatingWindow;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v3

    .line 134
    .local v3, "mTitleView":Lcom/lge/app/floating/ITitleView;
    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int/2addr p2, v5

    .line 136
    .end local v3    # "mTitleView":Lcom/lge/app/floating/ITitleView;
    :cond_99
    move v0, p1

    .line 137
    .local v0, "destX":I
    move v1, p2

    .line 139
    .local v1, "destY":I
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/lge/app/floating/FloatingDockWindow$4;

    invoke-direct {v7, p0, v0, v1}, Lcom/lge/app/floating/FloatingDockWindow$4;-><init>(Lcom/lge/app/floating/FloatingDockWindow;II)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    iget-object v5, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/lge/app/floating/FloatingDockWindow$5;

    invoke-direct {v7, p0}, Lcom/lge/app/floating/FloatingDockWindow$5;-><init>(Lcom/lge/app/floating/FloatingDockWindow;)V

    .line 155
    const-wide/16 v8, 0x64

    .line 147
    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    sput-boolean v6, Lcom/lge/app/floating/FloatingWindow;->sSavedLocation:Z

    goto/16 :goto_2c

    .end local v0    # "destX":I
    .end local v1    # "destY":I
    :cond_b5
    move v5, v6

    .line 131
    goto :goto_73
.end method

.method public onLeaveDockArea()V
    .registers 3

    .prologue
    .line 91
    const-string v0, "FloatingDockWindow"

    const-string v1, "onLeaveDockArea.. exitLowProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onUndockCompleted()V
    .registers 3

    .prologue
    .line 102
    const-string v0, "FloatingDockWindow"

    const-string v1, "onUndockCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Lcom/lge/dockservice/BaseDockWindow;->onUndockCompleted()V

    .line 104
    iget-object v0, p0, Lcom/lge/app/floating/FloatingDockWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/app/floating/FloatingDockWindow$3;

    invoke-direct {v1, p0}, Lcom/lge/app/floating/FloatingDockWindow$3;-><init>(Lcom/lge/app/floating/FloatingDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public updateDockIcon()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/lge/app/floating/FloatingDockWindow;->getDockIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    .local v0, "newIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/FloatingDockWindow;->updateDockIcon(Landroid/graphics/Bitmap;)V

    .line 177
    return-void
.end method
