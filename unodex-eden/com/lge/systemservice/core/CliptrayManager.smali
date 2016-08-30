.class public Lcom/lge/systemservice/core/CliptrayManager;
.super Ljava/lang/Object;
.source "CliptrayManager.java"


# static fields
.field private static final CLIPTRAYMANAGER_LOG_TAG:Ljava/lang/String; = "Cliptray Manager"

.field private static final COPY_CLIPDATA:I = 0x4

.field private static final COPY_IMAGE_BITMAP:I = 0x3

.field private static final COPY_IMAGE_URI:I = 0x2

.field private static final COPY_SCREENCAPTURE:I = 0x5

.field private static final COPY_STYLED_TEXT:I = 0x0

.field private static final COPY_TEXT_ONLY:I = 0x1

.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.cliptray"

.field private static final IME_CLIPTRAY_IMAGE:Ljava/lang/String; = "com.lge.cliptray.image"

.field public static final INPUT_TYPE_IMAGE_ONLY:I = 0x1

.field public static final INPUT_TYPE_TEXT_IMAGE:I = 0x2

.field public static final INPUT_TYPE_TEXT_ONLY:I = 0x0

.field private static final MAX_IMAGE_LIMIT_KB:I = 0x600

.field private static final MAX_IMAGE_LIMIT_NUM:I = 0x1e

.field public static final MIMETYPE_CLIPTRAY_IMAGE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

.field private static final MIN_REQUIRE_STORAGE:I = 0x100000


# instance fields
.field private mClipManager:Landroid/content/ClipboardManager;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mImageCount:I

.field private mImageSizeSum:I

.field private mService:Lcom/lge/systemservice/core/ICliptrayService;

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v6, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    .line 104
    iput-boolean v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    .line 106
    iput v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 107
    iput v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageCount:I

    .line 133
    iput-object p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    .line 134
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    .line 137
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v0, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 139
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 141
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_6d

    .line 142
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 143
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 149
    :goto_3f
    const-string v2, "cliptray"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    .line 150
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-eqz v2, :cond_5e

    .line 152
    :try_start_4f
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v4, Lcom/lge/systemservice/core/CliptrayManager$1;

    invoke-direct {v4, p0}, Lcom/lge/systemservice/core/CliptrayManager$1;-><init>(Lcom/lge/systemservice/core/CliptrayManager;)V

    .line 155
    const/4 v5, 0x0

    .line 152
    invoke-interface {v2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5e} :catch_76

    .line 159
    :cond_5e
    :goto_5e
    const-string v2, "Cliptray Manager"

    const-string v4, "new CliptrayManager"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-eqz v2, :cond_7a

    const/4 v2, 0x1

    :goto_6a
    iput-boolean v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    .line 161
    return-void

    .line 145
    :cond_6d
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 146
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    goto :goto_3f

    .line 156
    :catch_76
    move-exception v2

    iput-object v6, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    goto :goto_5e

    :cond_7a
    move v2, v3

    .line 160
    goto :goto_6a
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/CliptrayManager;Lcom/lge/systemservice/core/ICliptrayService;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    return-void
.end method

.method private adjustCopy(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/text/Spannable;[Landroid/text/style/DynamicDrawableSpan;)Landroid/content/ClipData;
    .registers 16
    .param p1, "selectedText"    # Ljava/lang/CharSequence;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "spannable"    # Landroid/text/Spannable;
    .param p4, "image"    # [Landroid/text/style/DynamicDrawableSpan;

    .prologue
    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "startPos":I
    const/4 v0, 0x0

    .line 562
    .local v0, "endPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v7, p4

    if-lt v1, v7, :cond_2b

    .line 593
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v4, v7, :cond_2a

    .line 594
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 595
    .local v6, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 597
    .local v3, "item":Landroid/content/ClipData$Item;
    if-nez p2, :cond_82

    .line 598
    new-instance p2, Landroid/content/ClipData;

    .end local p2    # "clip":Landroid/content/ClipData;
    const-string v7, "text"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "text/plain"

    aput-object v10, v8, v9

    invoke-direct {p2, v7, v8, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 603
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "clip":Landroid/content/ClipData;
    :cond_2a
    :goto_2a
    return-object p2

    .line 563
    :cond_2b
    aget-object v7, p4, v1

    invoke-interface {p3, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 565
    const/4 v7, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 566
    const/4 v7, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 568
    if-eq v4, v0, :cond_5f

    .line 569
    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 571
    .restart local v6    # "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 573
    .restart local v3    # "item":Landroid/content/ClipData$Item;
    if-nez p2, :cond_7e

    .line 575
    new-instance p2, Landroid/content/ClipData;

    .end local p2    # "clip":Landroid/content/ClipData;
    const-string v7, "image"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v10, v8, v9

    invoke-direct {p2, v7, v8, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 581
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "clip":Landroid/content/ClipData;
    :cond_5f
    :goto_5f
    aget-object v7, p4, v1

    invoke-interface {p3, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 584
    aget-object v7, p4, v1

    invoke-virtual {v7}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 585
    .local v5, "tempDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 587
    .local v2, "isSupportingBitmap":Z
    if-eqz v2, :cond_7b

    .line 588
    invoke-direct {p0, p2, p4, v1}, Lcom/lge/systemservice/core/CliptrayManager;->saveImageToDB(Landroid/content/ClipData;[Landroid/text/style/DynamicDrawableSpan;I)Landroid/content/ClipData;

    move-result-object p2

    .line 562
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 578
    .end local v2    # "isSupportingBitmap":Z
    .end local v5    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "item":Landroid/content/ClipData$Item;
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_7e
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_5f

    .line 600
    :cond_82
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2a
.end method

.method private calculateInSampleSize(II)I
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 965
    const/4 v3, 0x1

    .line 966
    .local v3, "inSampleSize":I
    if-le p1, p2, :cond_3b

    move v2, p1

    .line 967
    .local v2, "imgWidth":I
    :goto_4
    if-le p1, p2, :cond_3d

    move v1, p2

    .line 969
    .local v1, "imgHeight":I
    :goto_7
    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-gt v1, v5, :cond_f

    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-le v2, v5, :cond_26

    .line 970
    :cond_f
    int-to-double v6, v1

    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 971
    .local v0, "heightRatio":I
    int-to-double v6, v2

    iget v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 973
    .local v4, "widthRatio":I
    if-ge v0, v4, :cond_3f

    move v3, v0

    .line 975
    .end local v0    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_26
    :goto_26
    const-string v5, "Cliptray Manager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "calculateInSampleSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return v3

    .end local v1    # "imgHeight":I
    .end local v2    # "imgWidth":I
    :cond_3b
    move v2, p2

    .line 966
    goto :goto_4

    .restart local v2    # "imgWidth":I
    :cond_3d
    move v1, p1

    .line 967
    goto :goto_7

    .restart local v0    # "heightRatio":I
    .restart local v1    # "imgHeight":I
    .restart local v4    # "widthRatio":I
    :cond_3f
    move v3, v4

    .line 973
    goto :goto_26
.end method

.method private checkImageLimitReached(Z)V
    .registers 4
    .param p1, "isLimitReached"    # Z

    .prologue
    .line 804
    if-eqz p1, :cond_b

    .line 806
    :try_start_2
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 807
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_b

    .line 808
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showImageLimitReachedToast()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 814
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_b
    :goto_b
    return-void

    .line 810
    :catch_c
    move-exception v1

    .line 811
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method private closeOutputStream(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1302
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1306
    :goto_3
    return-void

    .line 1303
    :catch_4
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 11
    .param p1, "selectedText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "clip":Landroid/content/ClipData;
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_3d

    .line 534
    instance-of v5, p1, Landroid/text/Spannable;

    if-eqz v5, :cond_41

    move-object v4, p1

    .line 535
    check-cast v4, Landroid/text/Spannable;

    .line 542
    .local v4, "spannable":Landroid/text/Spannable;
    :goto_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroid/text/style/DynamicDrawableSpan;

    invoke-interface {v4, v8, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/DynamicDrawableSpan;

    .line 544
    .local v1, "image":[Landroid/text/style/DynamicDrawableSpan;
    iget-object v5, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.app.richnote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 546
    .local v2, "isMemo":Z
    array-length v5, v1

    if-lez v5, :cond_2a

    if-nez v2, :cond_48

    .line 548
    :cond_2a
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 549
    .local v3, "item":Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    .end local v0    # "clip":Landroid/content/ClipData;
    const-string v5, "text"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "text/plain"

    aput-object v7, v6, v8

    invoke-direct {v0, v5, v6, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 555
    .end local v1    # "image":[Landroid/text/style/DynamicDrawableSpan;
    .end local v2    # "isMemo":Z
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "spannable":Landroid/text/Spannable;
    .restart local v0    # "clip":Landroid/content/ClipData;
    :cond_3d
    :goto_3d
    invoke-direct {p0, v0}, Lcom/lge/systemservice/core/CliptrayManager;->saveClipDataToCliptray(Landroid/content/ClipData;)Z

    .line 556
    return-void

    .line 537
    :cond_41
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    .restart local v4    # "spannable":Landroid/text/Spannable;
    move-object p1, v4

    goto :goto_d

    .line 551
    .restart local v1    # "image":[Landroid/text/style/DynamicDrawableSpan;
    .restart local v2    # "isMemo":Z
    :cond_48
    invoke-direct {p0, p1, v0, v4, v1}, Lcom/lge/systemservice/core/CliptrayManager;->adjustCopy(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/text/Spannable;[Landroid/text/style/DynamicDrawableSpan;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_3d
.end method

.method private copyClipData(Landroid/content/ClipData;)Z
    .registers 16
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    const/4 v10, 0x0

    .line 748
    const/4 v5, 0x0

    .line 749
    .local v5, "isLimitReached":Z
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    const-string v12, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    invoke-virtual {v11, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    .line 750
    .local v3, "hasImage":Z
    iput v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 751
    iput v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageCount:I

    .line 753
    const/4 v8, 0x0

    .line 755
    .local v8, "newclip":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 756
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-lt v4, v2, :cond_20

    .line 799
    invoke-direct {p0, v5}, Lcom/lge/systemservice/core/CliptrayManager;->checkImageLimitReached(Z)V

    .line 800
    invoke-direct {p0, v8}, Lcom/lge/systemservice/core/CliptrayManager;->saveClipDataToCliptray(Landroid/content/ClipData;)Z

    move-result v10

    :goto_1f
    return v10

    .line 757
    :cond_20
    invoke-virtual {p1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 758
    .local v7, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 759
    .local v1, "clipUri":Landroid/net/Uri;
    const-string v11, "Cliptray Manager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "copy clipdata uri = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v1, :cond_88

    .line 762
    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    const/16 v12, 0x600

    if-ge v11, v12, :cond_86

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageCount:I

    const/16 v12, 0x1e

    if-ge v11, v12, :cond_86

    .line 763
    if-eqz v3, :cond_6f

    .line 765
    invoke-direct {p0, v1}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 766
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_67

    .line 767
    const-string v11, "Cliptray Manager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "image copy failed.. cannot decode from URI: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 772
    :cond_67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    .line 774
    .local v6, "isPNG":Z
    invoke-direct {p0, v0, v6}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v1

    .line 777
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "isPNG":Z
    :cond_6f
    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 779
    .local v9, "newitem":Landroid/content/ClipData$Item;
    if-nez v8, :cond_82

    .line 780
    new-instance v8, Landroid/content/ClipData;

    .end local v8    # "newclip":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    invoke-direct {v8, v11, v9}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 756
    .end local v9    # "newitem":Landroid/content/ClipData$Item;
    .restart local v8    # "newclip":Landroid/content/ClipData;
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 782
    .restart local v9    # "newitem":Landroid/content/ClipData$Item;
    :cond_82
    invoke-virtual {v8, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_7f

    .line 785
    .end local v9    # "newitem":Landroid/content/ClipData$Item;
    :cond_86
    const/4 v5, 0x1

    .line 787
    goto :goto_7f

    .line 789
    :cond_88
    iget-object v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7f

    .line 791
    if-nez v8, :cond_a4

    .line 792
    new-instance v8, Landroid/content/ClipData;

    .end local v8    # "newclip":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v11

    invoke-direct {v8, v11, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 793
    .restart local v8    # "newclip":Landroid/content/ClipData;
    goto :goto_7f

    .line 794
    :cond_a4
    invoke-virtual {v8, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_7f
.end method

.method private copyImageBitmap(Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    .line 727
    .local v3, "hasAlpha":Z
    invoke-direct {p0, p1, v3}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v4

    .line 729
    .local v4, "imgUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 730
    .local v5, "item":Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    const-string v8, "image"

    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v10, v9, v7

    invoke-direct {v0, v8, v9, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 732
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_32

    .line 734
    :try_start_1e
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 735
    .local v1, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_27

    .line 736
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2d

    .line 741
    .end local v1    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_27
    :goto_27
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 744
    :goto_2c
    return v6

    .line 737
    :catch_2d
    move-exception v2

    .line 738
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_27

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_32
    move v6, v7

    .line 744
    goto :goto_2c
.end method

.method private copyImageUri(Landroid/net/Uri;)Z
    .registers 14
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 693
    const-string v9, "Cliptray Manager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "copy image uri = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_31

    .line 698
    const-string v8, "Cliptray Manager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image copy failed.. cannot decode from URI: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_30
    :goto_30
    return v7

    .line 702
    :cond_31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    .line 704
    .local v4, "isPNG":Z
    invoke-direct {p0, v0, v4}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v6

    .line 706
    .local v6, "newUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 707
    .local v5, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    const-string v9, "image"

    new-array v10, v8, [Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v11, v10, v7

    invoke-direct {v1, v9, v10, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 709
    .local v1, "clip":Landroid/content/ClipData;
    if-eqz v1, :cond_30

    .line 711
    :try_start_4d
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    .line 712
    .local v2, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v2, :cond_56

    .line 713
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_5d

    .line 718
    .end local v2    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_56
    :goto_56
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v7, v8

    .line 719
    goto :goto_30

    .line 714
    :catch_5d
    move-exception v3

    .line 715
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56
.end method

.method private copyScreenCapture(Landroid/net/Uri;)Z
    .registers 14
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 834
    const-string v9, "Cliptray Manager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "copy image uri = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_31

    .line 839
    const-string v8, "Cliptray Manager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image copy failed.. cannot decode from URI: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_30
    :goto_30
    return v7

    .line 843
    :cond_31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    .line 845
    .local v4, "isPNG":Z
    invoke-direct {p0, v0, v4}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v6

    .line 847
    .local v6, "newUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 848
    .local v5, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    const-string v9, "image"

    new-array v10, v8, [Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v11, v10, v7

    invoke-direct {v1, v9, v10, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 850
    .local v1, "clip":Landroid/content/ClipData;
    if-eqz v1, :cond_30

    .line 851
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v2

    .line 852
    .local v2, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    invoke-virtual {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v7

    if-nez v7, :cond_68

    .line 854
    if-eqz v2, :cond_5c

    .line 855
    :try_start_59
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_63

    .line 868
    :cond_5c
    :goto_5c
    iget-object v7, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v7, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    move v7, v8

    .line 869
    goto :goto_30

    .line 856
    :catch_63
    move-exception v3

    .line 857
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5c

    .line 861
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_68
    if-eqz v2, :cond_5c

    .line 862
    :try_start_6a
    invoke-interface {v2}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptrayCopiedToast()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_5c

    .line 863
    :catch_6e
    move-exception v3

    .line 864
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5c
.end method

.method private copyTextOnly(Ljava/lang/String;)V
    .registers 10
    .param p1, "selectedText"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v4, "Cliptray Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copy text = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "clip":Landroid/content/ClipData;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 630
    .local v3, "item":Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    .end local v0    # "clip":Landroid/content/ClipData;
    const-string v4, "text"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "text/plain"

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 631
    .restart local v0    # "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_39

    .line 633
    :try_start_2b
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 634
    .local v1, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_34

    .line 635
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3a

    .line 639
    .end local v1    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v4, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 641
    :cond_39
    return-void

    .line 636
    :catch_3a
    move-exception v2

    .line 637
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34
.end method

.method private doCopyToCliptray(ILjava/lang/Object;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 1139
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-nez v0, :cond_7

    .line 1187
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-void

    .line 1142
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    const-string v3, "Cliptray Manager"

    const-string v4, "doCopyToCliptray"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-wide/32 v4, 0x100000

    invoke-direct {p0, v4, v5}, Lcom/lge/systemservice/core/CliptrayManager;->hasAvailableSpaceForImageCopy(J)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1146
    :try_start_17
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCopyFailedToast()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 1147
    :catch_1b
    move-exception v2

    .line 1148
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1153
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v1, 0x1

    .line 1155
    .local v1, "copy":Z
    packed-switch p1, :pswitch_data_5a

    .line 1175
    const/4 v1, 0x0

    .line 1179
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_25
    if-nez v1, :cond_6

    .line 1181
    if-eqz v0, :cond_6

    .line 1182
    :try_start_29
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showDecodeErrorToast()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_6

    .line 1183
    :catch_2d
    move-exception v2

    .line 1184
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 1157
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_32
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copy(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 1160
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_38
    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyTextOnly(Ljava/lang/String;)V

    goto :goto_25

    .line 1163
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_3e
    check-cast p2, Landroid/net/Uri;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyImageUri(Landroid/net/Uri;)Z

    move-result v1

    .line 1164
    goto :goto_25

    .line 1166
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_45
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyImageBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 1167
    goto :goto_25

    .line 1169
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_4c
    check-cast p2, Landroid/content/ClipData;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyClipData(Landroid/content/ClipData;)Z

    move-result v1

    .line 1170
    goto :goto_25

    .line 1172
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_53
    check-cast p2, Landroid/net/Uri;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->copyScreenCapture(Landroid/net/Uri;)Z

    move-result v1

    .line 1173
    goto :goto_25

    .line 1155
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_32
        :pswitch_38
        :pswitch_3e
        :pswitch_45
        :pswitch_4c
        :pswitch_53
    .end packed-switch
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1047
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1072
    :goto_d
    return v6

    .line 1053
    :cond_e
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1054
    .local v5, "secondSlash":I
    if-ge v5, v6, :cond_18

    move v6, v7

    .line 1055
    goto :goto_d

    .line 1057
    :cond_18
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "directoryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_29

    move v6, v7

    .line 1060
    goto :goto_d

    .line 1063
    :cond_29
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 1064
    .local v4, "parentFile":Ljava/io/File;
    if-eqz v4, :cond_32

    .line 1065
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1069
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-result v6

    goto :goto_d

    .line 1070
    :catch_37
    move-exception v3

    .line 1071
    .local v3, "ioe":Ljava/io/IOException;
    const-string v6, "Cliptray Manager"

    const-string v8, "File creation failed"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 1072
    goto :goto_d
.end method

.method private generateFileName(Z)Ljava/lang/String;
    .registers 6
    .param p1, "isPNG"    # Z

    .prologue
    .line 1036
    if-eqz p1, :cond_1e

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "testing cliptray : current Uri = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :try_start_15
    iget-object v3, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 883
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 884
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    .line 888
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_26
    return-object v0

    .line 885
    :catch_27
    move-exception v1

    .line 886
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 646
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method private getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageFile"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x0

    .line 1309
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageSizeSum:I

    .line 1310
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mImageCount:I

    .line 1311
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 1312
    .local v9, "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1315
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1316
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1317
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 1318
    const-string v3, "_data=? "

    .line 1319
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 1315
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1320
    if-eqz v7, :cond_76

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1322
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1321
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1323
    .local v10, "id":I
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1324
    .local v6, "baseUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_69} :catch_ad
    .catchall {:try_start_1a .. :try_end_69} :catchall_c2

    move-result-object v0

    .line 1341
    if-eqz v7, :cond_75

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_75

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1345
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v10    # "id":I
    :cond_75
    :goto_75
    return-object v0

    .line 1327
    :cond_76
    :try_start_76
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1328
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1329
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1331
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1330
    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_93} :catch_ad
    .catchall {:try_start_76 .. :try_end_93} :catchall_c2

    move-result-object v0

    .line 1341
    if-eqz v7, :cond_75

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_75

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_75

    .line 1341
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_a0
    if-eqz v7, :cond_ab

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ab
    move-object v0, v12

    .line 1334
    goto :goto_75

    .line 1337
    :catch_ad
    move-exception v8

    .line 1338
    .local v8, "e":Ljava/lang/Exception;
    :try_start_ae
    const-string v0, "Cliptray Manager"

    const-string v1, "CliptrayManager cannot get image uri!!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_c2

    .line 1341
    if-eqz v7, :cond_c0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c0
    move-object v0, v12

    .line 1345
    goto :goto_75

    .line 1340
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_c2
    move-exception v0

    .line 1341
    if-eqz v7, :cond_ce

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1344
    :cond_ce
    throw v0
.end method

.method private getNewFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1224
    const-string v0, ".cliptray"

    .line 1227
    .local v0, "foldername":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 1228
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    new-instance v1, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .local v1, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_56

    .line 1236
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1239
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1240
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image save path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0, v2}, Lcom/lge/systemservice/core/CliptrayManager;->ensureFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 1243
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create new file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1249
    .end local v1    # "nomedia":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_9c
    const-string v2, ""

    :cond_9e
    return-object v2
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .registers 12
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1190
    const/4 v8, -0x1

    .line 1191
    .local v8, "orientation":I
    const/4 v6, -0x1

    .line 1193
    .local v6, "columnIndex":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1194
    const-string v0, "Cliptray Manager"

    const-string v1, "file uri, return default orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1220
    .end local v8    # "orientation":I
    .local v9, "orientation":I
    :goto_17
    return v9

    .line 1198
    .end local v9    # "orientation":I
    .restart local v8    # "orientation":I
    :cond_18
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1200
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7d

    .line 1201
    :try_start_28
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1202
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content uri, orientation columnIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    if-gez v6, :cond_5f

    .line 1205
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientation column not found, return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_84

    .line 1216
    if-eqz v7, :cond_5d

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5d
    move v9, v8

    .line 1206
    .end local v8    # "orientation":I
    .restart local v9    # "orientation":I
    goto :goto_17

    .line 1209
    .end local v9    # "orientation":I
    .restart local v8    # "orientation":I
    :cond_5f
    :try_start_5f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1210
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1211
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientation column found, return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_84

    .line 1216
    :cond_7d
    if-eqz v7, :cond_82

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_82
    move v9, v8

    .line 1220
    .end local v8    # "orientation":I
    .restart local v9    # "orientation":I
    goto :goto_17

    .line 1215
    .end local v9    # "orientation":I
    .restart local v8    # "orientation":I
    :catchall_84
    move-exception v0

    .line 1216
    if-eqz v7, :cond_8a

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1219
    :cond_8a
    throw v0
.end method

.method private getOutputUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1081
    const-string v0, ".cliptray"

    .line 1084
    .local v0, "foldername":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1085
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Android/data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1090
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v1, "imageFile":Ljava/io/File;
    const-string v4, "Cliptray Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "image save path = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {p0, v3}, Lcom/lge/systemservice/core/CliptrayManager;->ensureFileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1094
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to create new file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1097
    :cond_91
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v2, "nomediaFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c4

    .line 1099
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1102
    :cond_c4
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 1105
    .end local v1    # "imageFile":Ljava/io/File;
    .end local v2    # "nomediaFile":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :goto_c8
    return-object v4

    :cond_c9
    const/4 v4, 0x0

    goto :goto_c8
.end method

.method private getSampledBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 896
    invoke-direct/range {p0 .. p1}, Lcom/lge/systemservice/core/CliptrayManager;->getOrientation(Landroid/net/Uri;)I

    move-result v12

    .line 897
    .local v12, "orientation":I
    const-string v1, "Cliptray Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image is rotated by : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v13, 0x0

    .line 900
    .local v13, "stringUri":Ljava/lang/String;
    const/4 v14, 0x0

    .line 901
    .local v14, "tempUri":Ljava/lang/String;
    const/4 v9, 0x0

    .line 902
    .local v9, "encodedUri":Landroid/net/Uri;
    if-eqz p1, :cond_63

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 904
    const-string v1, "QuickMemo"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "QMemo"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 905
    :cond_31
    const-string v1, "%2B"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 906
    const-string v1, "%2B"

    const-string v2, "+"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 907
    const-string v1, "Cliptray Manager"

    const-string v2, "file uri from Email drawing > change to QMemo+!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_48
    const-string v1, ":/"

    invoke-static {v13, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 910
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 917
    iget-object v1, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 918
    .local v7, "cr":Landroid/content/ContentResolver;
    if-nez v7, :cond_6c

    .line 919
    const-string v1, "Cliptray Manager"

    const-string v2, "getSampledBitmapFromUri: content resolver is null, cannot copy image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    .line 961
    .end local v7    # "cr":Landroid/content/ContentResolver;
    :cond_62
    :goto_62
    return-object v0

    .line 913
    :cond_63
    const-string v1, "Cliptray Manager"

    const-string v2, "getSampledBitmapFromUri: image uri is null, cannot copy image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x0

    goto :goto_62

    .line 927
    .restart local v7    # "cr":Landroid/content/ContentResolver;
    :cond_6c
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 928
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 930
    :try_start_74
    invoke-virtual {v7, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 931
    .local v10, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-static {v10, v1, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 932
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7f} :catch_b5

    .line 938
    .end local v10    # "is":Ljava/io/InputStream;
    :goto_7f
    iget v1, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v2}, Lcom/lge/systemservice/core/CliptrayManager;->calculateInSampleSize(II)I

    move-result v1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 941
    const/4 v1, 0x0

    :try_start_8a
    iput-boolean v1, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 942
    invoke-virtual {v7, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 943
    .restart local v10    # "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-static {v10, v1, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 944
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_98} :catch_ba

    .line 952
    if-eqz v0, :cond_62

    if-lez v12, :cond_62

    .line 953
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 954
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, v12

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 956
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_a7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_b3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a7 .. :try_end_b3} :catch_c0

    move-result-object v0

    goto :goto_62

    .line 933
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_b5
    move-exception v8

    .line 934
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 945
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_ba
    move-exception v8

    .line 946
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 947
    const/4 v0, 0x0

    goto :goto_62

    .line 957
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_c0
    move-exception v8

    .line 958
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_62
.end method

.method private final getService()Lcom/lge/systemservice/core/ICliptrayService;
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-nez v0, :cond_23

    .line 165
    const-string v0, "cliptray"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ICliptrayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    .line 166
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    if-eqz v0, :cond_23

    .line 168
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/CliptrayManager$2;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/CliptrayManager$2;-><init>(Lcom/lge/systemservice/core/CliptrayManager;)V

    .line 171
    const/4 v2, 0x0

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 175
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    return-object v0

    .line 172
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mService:Lcom/lge/systemservice/core/ICliptrayService;

    goto :goto_23
.end method

.method private hasAvailableSpaceForImageCopy(J)Z
    .registers 16
    .param p1, "size"    # J

    .prologue
    const/4 v6, 0x0

    .line 1126
    :try_start_1
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v5, "ts":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 1128
    .local v0, "available_blocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 1129
    .local v2, "block_size":J
    const-string v7, "Cliptray Manager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Available = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v10, v0, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / Request = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_40

    .line 1130
    mul-long v8, v0, v2

    cmp-long v7, v8, p1

    if-lez v7, :cond_3f

    const/4 v6, 0x1

    .line 1134
    .end local v0    # "available_blocks":J
    .end local v2    # "block_size":J
    .end local v5    # "ts":Landroid/os/StatFs;
    :cond_3f
    :goto_3f
    return v6

    .line 1131
    :catch_40
    move-exception v4

    .line 1132
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "Cliptray Manager"

    const-string v8, "Fail to access storage : "

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isPNG"    # Z

    .prologue
    .line 1116
    invoke-direct {p0, p2}, Lcom/lge/systemservice/core/CliptrayManager;->generateFileName(Z)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "filename":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/systemservice/core/CliptrayManager;->getNewFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "newFilePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1119
    invoke-direct {p0, p1, v1, p2}, Lcom/lge/systemservice/core/CliptrayManager;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    .line 1121
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "isPNG"    # Z

    .prologue
    .line 1255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1256
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1257
    .local v4, "height":I
    iget v1, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 1258
    .local v1, "dstWidth":I
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 1260
    .local v0, "dstHeight":I
    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-gt v9, v11, :cond_14

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-le v4, v11, :cond_2b

    .line 1261
    :cond_14
    int-to-float v11, v4

    int-to-float v12, v0

    div-float v5, v11, v12

    .line 1262
    .local v5, "heightRatio":F
    int-to-float v11, v9

    int-to-float v12, v1

    div-float v10, v11, v12

    .line 1263
    .local v10, "widthRatio":F
    cmpl-float v11, v5, v10

    if-lez v11, :cond_57

    .line 1264
    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1269
    :goto_26
    const/4 v11, 0x1

    :try_start_27
    invoke-static {p1, v1, v0, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_2a} :catch_5e

    move-result-object p1

    .line 1275
    .end local v5    # "heightRatio":F
    .end local v10    # "widthRatio":F
    :cond_2b
    :goto_2b
    const/4 v8, 0x0

    .line 1276
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 1279
    .local v6, "outstream":Ljava/io/OutputStream;
    :try_start_2d
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_6c
    .catchall {:try_start_2d .. :try_end_37} :catchall_76

    .line 1280
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .local v7, "outstream":Ljava/io/OutputStream;
    if-eqz p3, :cond_63

    .line 1281
    :try_start_39
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 1285
    :goto_40
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_82
    .catchall {:try_start_39 .. :try_end_43} :catchall_7f

    .line 1289
    if-eqz v7, :cond_48

    .line 1290
    invoke-direct {p0, v7}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_48
    move-object v6, v7

    .line 1294
    .end local v7    # "outstream":Ljava/io/OutputStream;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    :cond_49
    :goto_49
    if-eqz v8, :cond_7d

    .line 1295
    iget-object v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11, v12}, Lcom/lge/systemservice/core/CliptrayManager;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1297
    :goto_56
    return-object v11

    .line 1266
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .end local v8    # "success":Z
    .restart local v5    # "heightRatio":F
    .restart local v10    # "widthRatio":F
    :cond_57
    int-to-float v11, v4

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_26

    .line 1270
    :catch_5e
    move-exception v2

    .line 1271
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2b

    .line 1283
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "heightRatio":F
    .end local v10    # "widthRatio":F
    .restart local v7    # "outstream":Ljava/io/OutputStream;
    .restart local v8    # "success":Z
    :cond_63
    :try_start_63
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x50

    invoke-virtual {p1, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_82
    .catchall {:try_start_63 .. :try_end_6a} :catchall_7f

    move-result v8

    goto :goto_40

    .line 1286
    .end local v7    # "outstream":Ljava/io/OutputStream;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    :catch_6c
    move-exception v3

    .line 1287
    .local v3, "ex":Ljava/lang/Exception;
    :goto_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_76

    .line 1289
    if-eqz v6, :cond_49

    .line 1290
    invoke-direct {p0, v6}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_49

    .line 1288
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_76
    move-exception v11

    .line 1289
    :goto_77
    if-eqz v6, :cond_7c

    .line 1290
    invoke-direct {p0, v6}, Lcom/lge/systemservice/core/CliptrayManager;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 1292
    :cond_7c
    throw v11

    .line 1297
    :cond_7d
    const/4 v11, 0x0

    goto :goto_56

    .line 1288
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .restart local v7    # "outstream":Ljava/io/OutputStream;
    :catchall_7f
    move-exception v11

    move-object v6, v7

    .end local v7    # "outstream":Ljava/io/OutputStream;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    goto :goto_77

    .line 1286
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .restart local v7    # "outstream":Ljava/io/OutputStream;
    :catch_82
    move-exception v3

    move-object v6, v7

    .end local v7    # "outstream":Ljava/io/OutputStream;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    goto :goto_6d
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Z)V
    .registers 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPNG"    # Z

    .prologue
    .line 984
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 985
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 986
    .local v4, "height":I
    iget v1, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    .line 987
    .local v1, "dstWidth":I
    iget v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    .line 989
    .local v0, "dstHeight":I
    iget v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    if-gt v8, v10, :cond_14

    iget v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    if-le v4, v10, :cond_2f

    .line 990
    :cond_14
    int-to-float v10, v4

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 991
    .local v5, "heightRatio":F
    int-to-float v10, v8

    iget v11, p0, Lcom/lge/systemservice/core/CliptrayManager;->thumbnailWidth:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 992
    .local v9, "widthRatio":F
    cmpl-float v10, v5, v9

    if-lez v10, :cond_4a

    .line 993
    int-to-float v10, v8

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 998
    :goto_2a
    const/4 v10, 0x1

    :try_start_2b
    invoke-static {p1, v1, v0, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_2e} :catch_51

    move-result-object p1

    .line 1004
    .end local v5    # "heightRatio":F
    .end local v9    # "widthRatio":F
    :cond_2f
    :goto_2f
    const/4 v7, 0x0

    .line 1005
    .local v7, "success":Z
    const/4 v6, 0x0

    .line 1008
    .local v6, "outstream":Ljava/io/OutputStream;
    :try_start_31
    iget-object v10, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1009
    if-eqz p3, :cond_56

    .line 1010
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_43} :catch_5f
    .catchall {:try_start_31 .. :try_end_43} :catchall_76

    move-result v7

    .line 1017
    :goto_44
    if-eqz v6, :cond_49

    .line 1019
    :try_start_46
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_86

    .line 1030
    :cond_49
    :goto_49
    return-void

    .line 995
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .end local v7    # "success":Z
    .restart local v5    # "heightRatio":F
    .restart local v9    # "widthRatio":F
    :cond_4a
    int-to-float v10, v4

    div-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2a

    .line 999
    :catch_51
    move-exception v2

    .line 1000
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2f

    .line 1012
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "heightRatio":F
    .end local v9    # "widthRatio":F
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    .restart local v7    # "success":Z
    :cond_56
    :try_start_56
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {p1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_5d} :catch_5f
    .catchall {:try_start_56 .. :try_end_5d} :catchall_76

    move-result v7

    goto :goto_44

    .line 1014
    :catch_5f
    move-exception v3

    .line 1015
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_60
    const-string v10, "Cliptray Manager"

    const-string v11, "error creating file"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_76

    .line 1017
    if-eqz v6, :cond_49

    .line 1019
    :try_start_69
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_49

    .line 1021
    :catch_6d
    move-exception v3

    .line 1022
    .local v3, "ex":Ljava/io/IOException;
    const-string v10, "Cliptray Manager"

    const-string v11, "error closing outstream"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1016
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_76
    move-exception v10

    .line 1017
    if-eqz v6, :cond_7c

    .line 1019
    :try_start_79
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 1025
    :cond_7c
    :goto_7c
    throw v10

    .line 1021
    :catch_7d
    move-exception v3

    .line 1022
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v11, "Cliptray Manager"

    const-string v12, "error closing outstream"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 1021
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_86
    move-exception v3

    .line 1022
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v10, "Cliptray Manager"

    const-string v11, "error closing outstream"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method private saveClipDataToCliptray(Landroid/content/ClipData;)Z
    .registers 5
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 817
    if-eqz p1, :cond_17

    .line 819
    :try_start_2
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 820
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_b

    .line 821
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->doCopyAnimation()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_12

    .line 827
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mClipManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 828
    const/4 v2, 0x1

    .line 830
    :goto_11
    return v2

    .line 823
    :catch_12
    move-exception v1

    .line 824
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b

    .line 830
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private saveImageToDB(Landroid/content/ClipData;[Landroid/text/style/DynamicDrawableSpan;I)Landroid/content/ClipData;
    .registers 13
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "image"    # [Landroid/text/style/DynamicDrawableSpan;
    .param p3, "i"    # I

    .prologue
    .line 607
    aget-object v5, p2, p3

    invoke-virtual {v5}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 608
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_31

    .line 609
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    .line 611
    .local v2, "hasAlpha":Z
    invoke-direct {p0, v0, v2}, Lcom/lge/systemservice/core/CliptrayManager;->insertImage(Landroid/graphics/Bitmap;Z)Landroid/net/Uri;

    move-result-object v3

    .line 612
    .local v3, "imgUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 615
    .local v4, "item":Landroid/content/ClipData$Item;
    if-nez p1, :cond_2d

    .line 616
    new-instance p1, Landroid/content/ClipData;

    .end local p1    # "clip":Landroid/content/ClipData;
    const-string v5, "mage"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v8, v6, v7

    invoke-direct {p1, v5, v6, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 623
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "hasAlpha":Z
    .end local v3    # "imgUri":Landroid/net/Uri;
    .end local v4    # "item":Landroid/content/ClipData$Item;
    .restart local p1    # "clip":Landroid/content/ClipData;
    :goto_2c
    return-object p1

    .line 618
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "hasAlpha":Z
    .restart local v3    # "imgUri":Landroid/net/Uri;
    .restart local v4    # "item":Landroid/content/ClipData$Item;
    :cond_2d
    invoke-virtual {p1, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2c

    .line 621
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "hasAlpha":Z
    .end local v3    # "imgUri":Landroid/net/Uri;
    .end local v4    # "item":Landroid/content/ClipData$Item;
    :cond_31
    const-string v5, "Cliptray Manager"

    const-string v6, "failed to copy image!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method


# virtual methods
.method public cleanClipTrayItems()Z
    .registers 4

    .prologue
    .line 681
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v1

    .line 682
    .local v1, "service":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v1, :cond_f

    .line 683
    invoke-interface {v1}, Lcom/lge/systemservice/core/ICliptrayService;->cleanClipTrayItems()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 684
    const/4 v2, 0x1

    .line 689
    .end local v1    # "service":Lcom/lge/systemservice/core/ICliptrayService;
    :goto_a
    return v2

    .line 686
    :catch_b
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public copyImageListToCliptray(Landroid/content/ClipData;[Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 21
    .param p1, "clipHtml"    # Landroid/content/ClipData;
    .param p2, "savedUri"    # [Landroid/net/Uri;
    .param p3, "imageUrl"    # [Ljava/lang/String;

    .prologue
    .line 300
    move-object/from16 v0, p2

    array-length v13, v0

    if-nez v13, :cond_15

    .line 301
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 302
    const-string v13, "Cliptray Manager"

    const-string v14, "copyImageListToCliptray::no image, save html text"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_14
    return-void

    .line 306
    :cond_15
    const-string v4, "\ufffc"

    .line 307
    .local v4, "image":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 309
    .local v6, "imgLength":I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 310
    .local v7, "itemHtml":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 312
    .local v10, "styledText":Ljava/lang/CharSequence;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v11, "subText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v5, "imgIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Landroid/content/ClipData;

    const-string v13, "html"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "text/html"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "vnd.android.cursor.item/vnd.com.lge.cliptray.image"

    aput-object v16, v14, v15

    invoke-direct {v8, v13, v14, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 317
    .local v8, "newClipData":Landroid/content/ClipData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_49
    move-object/from16 v0, p2

    array-length v13, v0

    if-lt v3, v13, :cond_ac

    .line 344
    :cond_4e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v13, v14, :cond_a4

    .line 345
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v10, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 347
    .local v12, "temp":Ljava/lang/CharSequence;
    if-eqz v12, :cond_99

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_99

    .line 348
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v12, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 350
    :cond_99
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v13, Landroid/content/ClipData$Item;

    invoke-direct {v13, v12}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 354
    .end local v12    # "temp":Ljava/lang/CharSequence;
    :cond_a4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    goto/16 :goto_14

    .line 318
    :cond_ac
    if-nez v3, :cond_c4

    const/4 v9, 0x0

    .line 319
    .local v9, "prevIndex":I
    :goto_af
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 320
    .local v2, "currIndex":I
    if-gez v2, :cond_d3

    .line 321
    if-nez v3, :cond_4e

    .line 322
    const-string v13, "Cliptray Manager"

    const-string v14, "image data not found!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 318
    .end local v2    # "currIndex":I
    .end local v9    # "prevIndex":I
    :cond_c4
    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int v9, v13, v6

    goto :goto_af

    .line 328
    .restart local v2    # "currIndex":I
    .restart local v9    # "prevIndex":I
    :cond_d3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    if-le v9, v2, :cond_f1

    .line 330
    const-string v13, "Cliptray Manager"

    const-string v14, "prev index is larger than current index!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_e3
    :goto_e3
    new-instance v13, Landroid/content/ClipData$Item;

    aget-object v14, p2, v3

    invoke-direct {v13, v14}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_49

    .line 331
    :cond_f1
    if-ge v9, v2, :cond_e3

    .line 332
    invoke-interface {v10, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 334
    .restart local v12    # "temp":Ljava/lang/CharSequence;
    if-eqz v12, :cond_114

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 335
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v12, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 337
    :cond_114
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v13, Landroid/content/ClipData$Item;

    invoke-direct {v13, v12}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_e3
.end method

.method public copyImageToCliptray(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 670
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 671
    return-void
.end method

.method public copyImageToCliptray(Landroid/net/Uri;)V
    .registers 3
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 259
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 260
    return-void
.end method

.method public copyScreenCaptureToCliptray(Landroid/net/Uri;)V
    .registers 3
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 286
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 287
    return-void
.end method

.method public copyTextToCliptray(Ljava/lang/String;)V
    .registers 3
    .param p1, "selectedText"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 659
    return-void
.end method

.method public copyToCliptray(Landroid/content/ClipData;)V
    .registers 3
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 273
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public copyToCliptray(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "selectedText"    # Ljava/lang/CharSequence;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lge/systemservice/core/CliptrayManager;->doCopyToCliptray(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method public getVisibility()I
    .registers 4

    .prologue
    .line 365
    const/4 v2, -0x1

    .line 367
    .local v2, "visibility":I
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 368
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_b

    .line 369
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->getVisibility()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v2

    .line 374
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_b
    :goto_b
    return v2

    .line 371
    :catch_c
    move-exception v1

    .line 372
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public hideCliptray()V
    .registers 4

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 206
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    if-nez v0, :cond_b

    .line 216
    :cond_a
    :goto_a
    return-void

    .line 211
    :cond_b
    if-eqz v0, :cond_a

    .line 212
    :try_start_d
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptraycue()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_a

    .line 213
    :catch_11
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public hideCliptrayIfNeeded()V
    .registers 4

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 227
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    if-nez v0, :cond_b

    .line 236
    :cond_a
    :goto_a
    return-void

    .line 232
    :cond_b
    :try_start_b
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptrayIfNeeded()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 233
    :catch_f
    move-exception v1

    .line 234
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public hideCliptraycue()V
    .registers 3

    .prologue
    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 421
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_9

    .line 422
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->hideCliptraycue()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 426
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_9
    :goto_9
    return-void

    .line 423
    :catch_a
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public isAvailable()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 516
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 517
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_34

    .line 519
    :try_start_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_35

    const/4 v2, 0x1

    .line 520
    .local v2, "isOwner":Z
    :goto_e
    const-string v4, "Cliptray Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isAvailable() UserHandle.myUserId() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isOwner = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-interface {v0, v2}, Lcom/lge/systemservice/core/ICliptrayService;->isAvailable(Z)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_37

    move-result v3

    .line 526
    .end local v2    # "isOwner":Z
    :cond_34
    :goto_34
    return v3

    :cond_35
    move v2, v3

    .line 519
    goto :goto_e

    .line 522
    :catch_37
    move-exception v1

    .line 523
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34
.end method

.method public isCliptraycueShowing()Z
    .registers 4

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, "isShowing":Z
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 440
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_b

    .line 441
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->isCliptraycueShowing()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v2

    .line 445
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_b
    :goto_b
    return v2

    .line 442
    :catch_c
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public isServiceConnected()Z
    .registers 4

    .prologue
    .line 503
    const-string v0, "Cliptray Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isServiceConnected : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-boolean v0, p0, Lcom/lge/systemservice/core/CliptrayManager;->mConnected:Z

    return v0
.end method

.method public setInputType(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 485
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 486
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_9

    .line 487
    invoke-interface {v0, p1}, Lcom/lge/systemservice/core/ICliptrayService;->setInputType(I)V

    .line 488
    :cond_9
    const-string v2, "Cliptray Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setInputType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 492
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :goto_1d
    return-void

    .line 489
    :catch_1e
    move-exception v1

    .line 490
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d
.end method

.method public setInputType(Ljava/lang/String;)V
    .registers 8
    .param p1, "options"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "type":I
    if-eqz p1, :cond_c

    const-string v3, "com.lge.cliptray.image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 461
    const/4 v2, 0x2

    .line 463
    :cond_c
    const-string v3, "Cliptray Manager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setInputType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :try_start_20
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 467
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_29

    .line 468
    invoke-interface {v0, v2}, Lcom/lge/systemservice/core/ICliptrayService;->setInputType(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 472
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_29
    :goto_29
    return-void

    .line 469
    :catch_2a
    move-exception v1

    .line 470
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29
.end method

.method public showCliptray()V
    .registers 4

    .prologue
    .line 185
    iget-object v2, p0, Lcom/lge/systemservice/core/CliptrayManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_5

    .line 196
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 191
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_4

    .line 192
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycueClose()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 193
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :catch_f
    move-exception v1

    .line 194
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public showCliptraycue()V
    .registers 3

    .prologue
    .line 387
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 388
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_9

    .line 389
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycue()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 393
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_9
    :goto_9
    return-void

    .line 390
    :catch_a
    move-exception v1

    .line 391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public showCliptraycueClose()V
    .registers 3

    .prologue
    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/CliptrayManager;->getService()Lcom/lge/systemservice/core/ICliptrayService;

    move-result-object v0

    .line 405
    .local v0, "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    if-eqz v0, :cond_9

    .line 406
    invoke-interface {v0}, Lcom/lge/systemservice/core/ICliptrayService;->showCliptraycueClose()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 410
    .end local v0    # "cliptrayservice":Lcom/lge/systemservice/core/ICliptrayService;
    :cond_9
    :goto_9
    return-void

    .line 407
    :catch_a
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method
