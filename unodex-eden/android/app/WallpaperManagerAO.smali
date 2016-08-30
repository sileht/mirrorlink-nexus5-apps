.class public Landroid/app/WallpaperManagerAO;
.super Ljava/lang/Object;
.source "WallpaperManagerAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManagerAO"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/app/WallpaperManagerAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 36
    :goto_3
    return-void

    .line 35
    :catch_4
    move-exception v0

    sput-object v0, Landroid/app/WallpaperManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_app_WallpaperManagerAO$1$9a6ffcf0proceed(Landroid/content/Context;Landroid/app/WallpaperManager$Globals;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic ajc$around$android_app_WallpaperManagerAO$2$1b3cbb26proceed(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p0, "this"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/app/WallpaperManagerAO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Landroid/app/WallpaperManagerAO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/WallpaperManagerAO;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$getBitmapOption(Landroid/app/WallpaperManagerAO;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/WallpaperManagerAO;->getBitmapOption(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/app/WallpaperManagerAO;

    invoke-direct {v0}, Landroid/app/WallpaperManagerAO;-><init>()V

    sput-object v0, Landroid/app/WallpaperManagerAO;->ajc$perSingletonInstance:Landroid/app/WallpaperManagerAO;

    return-void
.end method

.method public static aspectOf()Landroid/app/WallpaperManagerAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/app/WallpaperManagerAO;->ajc$perSingletonInstance:Landroid/app/WallpaperManagerAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_app_WallpaperManagerAO"

    sget-object v2, Landroid/app/WallpaperManagerAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/app/WallpaperManagerAO;->ajc$perSingletonInstance:Landroid/app/WallpaperManagerAO;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 101
    if-nez p1, :cond_5

    move-object p1, v5

    .line 154
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    :goto_4
    return-object p1

    .line 104
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    const-string v10, "WallpaperManagerAO"

    const-string v11, "generateBitmap() start"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 106
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 110
    if-lez p2, :cond_4

    if-lez p3, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_35

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_4

    .line 117
    :cond_35
    :try_start_35
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 118
    .local v5, "newbm":Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 120
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 125
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 126
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 128
    .local v1, "deltah":I
    if-gtz v2, :cond_62

    if-lez v1, :cond_80

    .line 131
    :cond_62
    if-le v2, v1, :cond_a8

    .line 132
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 136
    :goto_6a
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 137
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 138
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 139
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 142
    :cond_80
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 151
    goto/16 :goto_4

    .line 134
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_a8
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_ab
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_ab} :catch_af

    int-to-float v11, v11

    div-float v7, v10, v11

    .local v7, "scale":F
    goto :goto_6a

    .line 152
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v5    # "newbm":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_af
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v10, "WallpaperManagerAO"

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private getBitmapOption(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "decInfo"    # [B

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v5, "WallpaperManagerAO"

    const-string v6, "[AspectJ] getSampleSize()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v4, 0x1

    .line 58
    .local v4, "sampleSize":I
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;

    move-result-object v2

    .line 60
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_14

    .line 93
    :goto_13
    return-object v3

    .line 65
    :cond_14
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v0, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManagerAO;->ajc$privMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 73
    .local v1, "displaySize":Landroid/graphics/Point;
    :cond_23
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_3c

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-gt v5, v6, :cond_3c

    .line 84
    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_8e

    .line 90
    :goto_34
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_13

    .line 74
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3c
    mul-int/lit8 v4, v4, 0x2

    .line 75
    const/16 v5, 0x800

    if-le v4, v5, :cond_23

    .line 76
    const-string v5, "WallpaperManagerAO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getCurrentWallpaperLocked : displaySize.x = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", displaySize.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v5, "WallpaperManagerAO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getCurrentWallpaperLocked : bmOptions.outWidth = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bmOptions.outHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "WallpaperManagerAO"

    const-string v6, "Too big DRM\'d wallpaper image or too small display size. couldn\'t handle it"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_8e
    move-exception v5

    goto :goto_34
.end method

.method private getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v3, "WallpaperManagerAO"

    const-string v4, "[AspectJ] getDefaultDisplaySize()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 43
    .local v1, "p":Landroid/graphics/Point;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 44
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 45
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 46
    return-object v1
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/app/WallpaperManagerAO;->ajc$perSingletonInstance:Landroid/app/WallpaperManagerAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_app_WallpaperManagerAO$1$9a6ffcf0(Landroid/content/Context;Landroid/app/WallpaperManager$Globals;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Landroid/app/WallpaperManager$Globals;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,obj,ajc$aroundClosure"
        value = "(within(WallpaperManager.Globals) && (execution(* getCurrentWallpaperLocked(..)) && (args(context) && this(obj))))"
    .end annotation

    .prologue
    .line 166
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] around getCurrentWallpaperLocked pointcut"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static/range {p2 .. p2}, Landroid/app/WallpaperManager$Globals;->ajc$get$mService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v12

    if-nez v12, :cond_16

    .line 170
    const-string v12, "WallpaperManagerAO"

    const-string v13, "WallpaperService not running"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v12, 0x0

    .line 262
    :cond_15
    :goto_15
    return-object v12

    .line 174
    :cond_16
    const/4 v5, 0x0

    .line 175
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 178
    .local v7, "isDrmStream":Ljava/io/InputStream;
    :try_start_18
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v10, "params":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Landroid/app/WallpaperManager$Globals;->ajc$get$mService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v10}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 180
    if-nez v5, :cond_32

    .line 181
    const-string v12, "WallpaperManagerAO"

    const-string v13, "getCurrentWallpaperLocked(): fd is null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v12, 0x0

    goto :goto_15

    .line 186
    :cond_32
    const-string v12, "width"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 187
    .local v11, "width":I
    const-string v12, "height"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 188
    .local v6, "height":I
    const-string v12, "isGIF"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 192
    .local v8, "isGIF":Z
    const-string v12, "drmKey"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 193
    .local v3, "decInfo":[B
    sget-boolean v12, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v12, :cond_e0

    if-eqz v3, :cond_e0

    .line 194
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] around pcgetCurrentWallpaperLocked : DRM Content"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v5, v3}, Landroid/app/WallpaperManagerAO;->ajc$privMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$getBitmapOption(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_5f} :catch_dc

    move-result-object v9

    .line 197
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    if-nez v9, :cond_64

    .line 198
    const/4 v12, 0x0

    goto :goto_15

    .line 203
    :cond_64
    :try_start_64
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_6b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_64 .. :try_end_6b} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_b8
    .catchall {:try_start_64 .. :try_end_6b} :catchall_cb

    move-result-object v7

    .line 204
    if-nez v7, :cond_7f

    .line 219
    :try_start_6e
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] around pcgetCurrentWallpaperLocked before fd.close();"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 221
    if-eqz v7, :cond_7d

    .line 222
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7d} :catch_158
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7d} :catch_dc

    .line 205
    :cond_7d
    :goto_7d
    const/4 v12, 0x0

    goto :goto_15

    .line 209
    :cond_7f
    const/4 v12, 0x0

    :try_start_80
    invoke-static {v7, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    .local v2, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-static {v0, v2, v11, v6}, Landroid/app/WallpaperManagerAO;->ajc$inlineAccessMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_89
    .catch Ljava/lang/OutOfMemoryError; {:try_start_80 .. :try_end_89} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_b8
    .catchall {:try_start_80 .. :try_end_89} :catchall_cb

    move-result-object v12

    .line 219
    :try_start_8a
    const-string v13, "WallpaperManagerAO"

    const-string v14, "[AspectJ] around pcgetCurrentWallpaperLocked before fd.close();"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 221
    if-eqz v7, :cond_15

    .line 222
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_99} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_99} :catch_dc

    goto/16 :goto_15

    :catch_9b
    move-exception v13

    goto/16 :goto_15

    .line 213
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catch_9e
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :try_start_9f
    const-string v12, "WallpaperManagerAO"

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_cb

    .line 219
    :try_start_a6
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] around pcgetCurrentWallpaperLocked before fd.close();"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 221
    if-eqz v7, :cond_b5

    .line 222
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b5} :catch_155
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b5} :catch_dc

    .line 228
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_b5
    :goto_b5
    const/4 v12, 0x0

    goto/16 :goto_15

    :catch_b8
    move-exception v12

    .line 219
    :try_start_b9
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] around pcgetCurrentWallpaperLocked before fd.close();"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 221
    if-eqz v7, :cond_b5

    .line 222
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c8} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c8} :catch_dc

    goto :goto_b5

    .line 224
    :catch_c9
    move-exception v12

    goto :goto_b5

    .line 217
    :catchall_cb
    move-exception v12

    .line 219
    :try_start_cc
    const-string v13, "WallpaperManagerAO"

    const-string v14, "[AspectJ] around pcgetCurrentWallpaperLocked before fd.close();"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 221
    if-eqz v7, :cond_db

    .line 222
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_db} :catch_153
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_db} :catch_dc

    .line 227
    :cond_db
    :goto_db
    :try_start_db
    throw v12
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_dc} :catch_dc

    .end local v3    # "decInfo":[B
    .end local v6    # "height":I
    .end local v8    # "isGIF":Z
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "params":Landroid/os/Bundle;
    .end local v11    # "width":I
    :catch_dc
    move-exception v12

    .line 262
    :goto_dd
    const/4 v12, 0x0

    goto/16 :goto_15

    .line 233
    .restart local v3    # "decInfo":[B
    .restart local v6    # "height":I
    .restart local v8    # "isGIF":Z
    .restart local v10    # "params":Landroid/os/Bundle;
    .restart local v11    # "width":I
    :cond_e0
    :try_start_e0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v8, :cond_126

    .line 239
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    .line 238
    invoke-static {v12, v13, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_118

    .line 241
    const-string v12, "WallpaperManagerAO"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bm   width="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", height="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_118
    move-object/from16 v0, p1

    invoke-static {v0, v1, v11, v6}, Landroid/app/WallpaperManagerAO;->ajc$inlineAccessMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_11d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e0 .. :try_end_11d} :catch_13e
    .catchall {:try_start_e0 .. :try_end_11d} :catchall_14c

    move-result-object v12

    .line 254
    :try_start_11e
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_123
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_121} :catch_dc

    goto/16 :goto_15

    :catch_123
    move-exception v13

    goto/16 :goto_15

    .line 245
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_126
    :try_start_126
    const-string v12, "WallpaperManagerAO"

    const-string v13, "[AspectJ] getCurrentWallpaperLocked(): AOSP return"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    .line 246
    invoke-static {v12, v13, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_135
    .catch Ljava/lang/OutOfMemoryError; {:try_start_126 .. :try_end_135} :catch_13e
    .catchall {:try_start_126 .. :try_end_135} :catchall_14c

    move-result-object v12

    .line 254
    :try_start_136
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13b
    .catch Landroid/os/RemoteException; {:try_start_136 .. :try_end_139} :catch_dc

    goto/16 :goto_15

    :catch_13b
    move-exception v13

    goto/16 :goto_15

    .line 250
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_13e
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_13f
    const-string v12, "WallpaperManagerAO"

    const-string v13, "Can\'t decode file"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_14c

    .line 254
    :try_start_146
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14a
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_149} :catch_dc

    goto :goto_dd

    .line 255
    :catch_14a
    move-exception v12

    goto :goto_dd

    .line 252
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_14c
    move-exception v12

    .line 254
    :try_start_14d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_151
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_150} :catch_dc

    .line 258
    :goto_150
    :try_start_150
    throw v12
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_151} :catch_dc

    :catch_151
    move-exception v13

    goto :goto_150

    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_153
    move-exception v13

    goto :goto_db

    .line 224
    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    :catch_155
    move-exception v12

    goto/16 :goto_b5

    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :catch_158
    move-exception v12

    goto/16 :goto_7d
.end method

.method public ajc$around$android_app_WallpaperManagerAO$2$1b3cbb26(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "data,fos,ajc$aroundClosure"
        value = "(withincode(public void WallpaperManager.setStream(InputStream)) && (call(private void setWallpaper(InputStream, FileOutputStream)) && args(data, fos)))"
    .end annotation

    .prologue
    .line 271
    const-string v2, "WallpaperManagerAO"

    const-string v3, "[AspectJ] around setStream pointcut"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    .line 276
    .local v0, "is":Ljava/io/InputStream;
    :try_start_8
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_2c

    instance-of v2, p1, Lcom/lge/lgdrm/DrmStream;

    if-eqz v2, :cond_2c

    .line 277
    const-string v2, "WallpaperManagerAO"

    const-string v3, "Set DRM content as wallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Ljava/io/FileInputStream;

    check-cast p1, Lcom/lge/lgdrm/DrmStream;

    .end local p1    # "data":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmStream;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_37
    .catchall {:try_start_8 .. :try_end_22} :catchall_3e

    .line 279
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_22
    invoke-static {v1, p2, p3}, Landroid/app/WallpaperManagerAO;->ajc$around$android_app_WallpaperManagerAO$2$1b3cbb26proceed(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lorg/aspectj/runtime/internal/AroundClosure;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_48
    .catchall {:try_start_22 .. :try_end_25} :catchall_45

    move-object v0, v1

    .line 287
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_26
    if-eqz v0, :cond_2b

    .line 288
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 291
    :cond_2b
    return-void

    .line 281
    .restart local p1    # "data":Ljava/io/InputStream;
    :cond_2c
    :try_start_2c
    const-string v2, "WallpaperManagerAO"

    const-string v3, "[AspectJ] setStream(): proceed origin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p1, p2, p3}, Landroid/app/WallpaperManagerAO;->ajc$around$android_app_WallpaperManagerAO$2$1b3cbb26proceed(Ljava/io/InputStream;Ljava/io/FileOutputStream;Lorg/aspectj/runtime/internal/AroundClosure;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_37
    .catchall {:try_start_2c .. :try_end_36} :catchall_3e

    goto :goto_26

    .line 285
    .end local p1    # "data":Ljava/io/InputStream;
    :catch_37
    move-exception v2

    :goto_38
    :try_start_38
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3e

    .line 286
    :catchall_3e
    move-exception v2

    .line 287
    :goto_3f
    if-eqz v0, :cond_44

    .line 288
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 289
    :cond_44
    throw v2

    .line 286
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_45
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_3f

    .line 285
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_48
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_38
.end method

.method public ajc$privMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$getBitmapOption(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;
    .registers 5

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/WallpaperManagerAO;->getBitmapOption(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public ajc$privMethod$android_app_WallpaperManagerAO$android_app_WallpaperManagerAO$getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/app/WallpaperManagerAO;->getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
