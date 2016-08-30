.class Lcom/lge/app/floating/ResizeFrame;
.super Lcom/lge/app/floating/QslideView;
.source "ResizeFrame.java"


# instance fields
.field private final mCurrentRatio:F

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mMinHeight:I

.field private final mMinWidth:I

.field private mRefinedSize:Landroid/graphics/Point;

.field private final mResizeOption:I


# direct methods
.method public constructor <init>(Lcom/lge/app/floating/FloatableActivity;Landroid/view/LayoutInflater;Lcom/lge/app/floating/FloatingWindow;)V
    .registers 21
    .param p1, "activity"    # Lcom/lge/app/floating/FloatableActivity;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    .line 34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/lge/app/floating/QslideView;-><init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V

    .line 35
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/ResizeFrame;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    .line 36
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/app/floating/ResizeFrame;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/app/floating/ResizeFrame;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 56
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v13, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 57
    .local v11, "shortPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->minHeightWeight:F

    int-to-float v14, v11

    mul-float/2addr v13, v14

    float-to-int v7, v13

    .line 58
    .local v7, "minHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->minWidthWeight:F

    int-to-float v14, v11

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 59
    .local v8, "minWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->maxHeightWeight:F

    int-to-float v14, v11

    mul-float/2addr v13, v14

    float-to-int v5, v13

    .line 60
    .local v5, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->maxWidthWeight:F

    int-to-float v14, v11

    mul-float/2addr v13, v14

    float-to-int v6, v13

    .line 64
    .local v6, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->resizeOption:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    .line 65
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x7

    if-ne v13, v14, :cond_214

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v14

    iget v14, v14, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    .line 67
    int-to-float v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 68
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    div-float/2addr v13, v14

    float-to-int v8, v13

    .line 69
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 70
    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    div-float/2addr v13, v14

    float-to-int v6, v13

    .line 78
    :goto_97
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowX()I

    move-result v13

    add-int/2addr v13, v6

    iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v13, v14, :cond_b0

    .line 79
    iget v13, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowX()I

    move-result v14

    sub-int v6, v13, v14

    .line 81
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowX()I

    move-result v13

    add-int/2addr v13, v8

    iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v13, v14, :cond_c9

    .line 82
    iget v13, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowX()I

    move-result v14

    sub-int v8, v13, v14

    .line 84
    :cond_c9
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowY()I

    move-result v13

    add-int/2addr v13, v5

    iget v14, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v13, v14, :cond_e2

    .line 85
    iget v13, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowY()I

    move-result v14

    sub-int v5, v13, v14

    .line 87
    :cond_e2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowY()I

    move-result v13

    add-int/2addr v13, v7

    iget v14, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v13, v14, :cond_fb

    .line 88
    iget v13, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/app/floating/FloatingWindow;->getFrameWindowY()I

    move-result v14

    sub-int v7, v13, v14

    .line 93
    :cond_fb
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x7

    if-ne v13, v14, :cond_128

    .line 94
    int-to-float v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 95
    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    div-float/2addr v13, v14

    float-to-int v8, v13

    .line 96
    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 97
    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    div-float/2addr v13, v14

    float-to-int v6, v13

    .line 101
    :cond_128
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v13

    invoke-interface {v13}, Lcom/lge/app/floating/ITitleView;->getMinimumWidth()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 102
    if-ge v6, v8, :cond_13b

    move v6, v8

    .line 103
    :cond_13b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x7

    if-ne v13, v14, :cond_151

    .line 104
    int-to-float v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v13, v14

    float-to-int v7, v13

    .line 106
    if-lt v5, v7, :cond_14f

    if-ge v6, v8, :cond_151

    .line 107
    :cond_14f
    move v6, v8

    .line 108
    move v5, v7

    .line 113
    :cond_151
    move-object/from16 v0, p0

    iput v6, v0, Lcom/lge/app/floating/ResizeFrame;->mMaxWidth:I

    .line 114
    move-object/from16 v0, p0

    iput v8, v0, Lcom/lge/app/floating/ResizeFrame;->mMinWidth:I

    .line 115
    move-object/from16 v0, p0

    iput v5, v0, Lcom/lge/app/floating/ResizeFrame;->mMaxHeight:I

    .line 116
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lge/app/floating/ResizeFrame;->mMinHeight:I

    .line 119
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 120
    .local v10, "params":Landroid/view/WindowManager$LayoutParams;
    const v13, 0x800033

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v13

    invoke-interface {v13}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v9

    .line 122
    .local v9, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    iget v14, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    const/4 v13, 0x2

    new-array v4, v13, [I

    .line 127
    .local v4, "location":[I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    const/4 v13, 0x0

    aget v13, v4, v13

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 130
    const/4 v13, 0x1

    aget v13, v4, v13

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v13

    iget-boolean v13, v13, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-nez v13, :cond_1c9

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v13

    invoke-interface {v13}, Lcom/lge/app/floating/ITitleView;->measureAndGetHeight()I

    move-result v12

    .line 135
    .local v12, "titleHeight":I
    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v13, v12

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v13, v12

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 138
    .end local v12    # "titleHeight":I
    :cond_1c9
    const/16 v13, 0x7d2

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 139
    const/4 v13, -0x3

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    const v13, 0x40338

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Floating resize:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v14

    iget-object v14, v14, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/app/floating/ResizeFrame;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030002

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/lge/app/floating/ResizeFrame;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/lge/app/floating/ResizeFrame;->setPaddingRelative(IIII)V

    .line 154
    return-void

    .line 73
    .end local v4    # "location":[I
    .end local v9    # "padding":Landroid/graphics/Rect;
    .end local v10    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_214
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    goto/16 :goto_97
.end method

.method private refineSize(II)Landroid/graphics/Point;
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v7, 0x3f666666    # 0.9f

    .line 186
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v5

    iget v5, v5, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->height:I

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 189
    .local v1, "refinedSize":Landroid/graphics/Point;
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4c

    .line 190
    iget-object v5, p0, Lcom/lge/app/floating/ResizeFrame;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 191
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    div-int/lit8 v4, v5, 0x4

    .line 192
    .local v4, "unitWidth":I
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    div-int/lit8 v3, v5, 0x4

    .line 194
    .local v3, "unitHeight":I
    int-to-float v5, p1

    int-to-float v6, v4

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int p1, v4, v5

    .line 195
    int-to-float v5, p2

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int p2, v3, v5

    .line 196
    if-nez p1, :cond_49

    .line 197
    move p1, v4

    .line 199
    :cond_49
    if-nez p2, :cond_4c

    .line 200
    move p1, v3

    .line 206
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "unitHeight":I
    .end local v4    # "unitWidth":I
    :cond_4c
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x7

    if-ne v5, v6, :cond_62

    .line 207
    int-to-float v5, p2

    int-to-float v6, p1

    div-float v2, v5, v6

    .line 208
    .local v2, "targetRatio":F
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_8f

    .line 209
    int-to-float v5, p1

    iget v6, p0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    mul-float/2addr v5, v6

    float-to-int p2, v5

    .line 216
    .end local v2    # "targetRatio":F
    :cond_62
    :goto_62
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_70

    .line 218
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxWidth:I

    if-le p1, v5, :cond_95

    iget p1, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxWidth:I

    .end local p1    # "width":I
    :cond_6e
    :goto_6e
    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 221
    :cond_70
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mResizeOption:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7e

    .line 223
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxHeight:I

    if-le p2, v5, :cond_9c

    iget p2, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxHeight:I

    .end local p2    # "height":I
    :cond_7c
    :goto_7c
    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 228
    :cond_7e
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxWidth:I

    if-ge v5, v6, :cond_86

    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 234
    :cond_86
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/lge/app/floating/ResizeFrame;->mMaxHeight:I

    if-ge v5, v6, :cond_8e

    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 240
    :cond_8e
    return-object v1

    .line 212
    .restart local v2    # "targetRatio":F
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_8f
    int-to-float v5, p2

    iget v6, p0, Lcom/lge/app/floating/ResizeFrame;->mCurrentRatio:F

    div-float/2addr v5, v6

    float-to-int p1, v5

    goto :goto_62

    .line 219
    .end local v2    # "targetRatio":F
    :cond_95
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mMinWidth:I

    if-ge p1, v5, :cond_6e

    iget p1, p0, Lcom/lge/app/floating/ResizeFrame;->mMinWidth:I

    goto :goto_6e

    .line 224
    .end local p1    # "width":I
    :cond_9c
    iget v5, p0, Lcom/lge/app/floating/ResizeFrame;->mMinHeight:I

    if-ge p2, v5, :cond_7c

    iget p2, p0, Lcom/lge/app/floating/ResizeFrame;->mMinHeight:I

    goto :goto_7c
.end method


# virtual methods
.method dismiss()V
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getRealWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method getRefinedSize()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/app/floating/ResizeFrame;->mRefinedSize:Landroid/graphics/Point;

    return-object v0
.end method

.method setSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 158
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/ResizeFrame;->refineSize(II)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/app/floating/ResizeFrame;->mRefinedSize:Landroid/graphics/Point;

    .line 159
    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/app/floating/IFrameView;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 160
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/app/floating/ResizeFrame;->mRefinedSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 161
    iget-object v2, p0, Lcom/lge/app/floating/ResizeFrame;->mRefinedSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 162
    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-nez v2, :cond_49

    .line 163
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->getTitleViewInterface()Lcom/lge/app/floating/ITitleView;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/app/floating/ITitleView;->measureAndGetHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 166
    :cond_49
    invoke-virtual {p0}, Lcom/lge/app/floating/ResizeFrame;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    return-void
.end method
