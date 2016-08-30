.class public Landroid/app/WallpaperManagerEx;
.super Landroid/app/WallpaperManager;
.source "WallpaperManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sService:Landroid/app/IWallpaperManagerEx;


# instance fields
.field private mDisplayHeight:I

.field private mDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Landroid/app/WallpaperManagerEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManagerEx;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 29
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 31
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 35
    .local v2, "rotation":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_21

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    .line 36
    :cond_21
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    .line 37
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    .line 42
    :goto_29
    return-void

    .line 39
    :cond_2a
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    .line 40
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    goto :goto_29
.end method

.method private static getServiceEx()Landroid/app/IWallpaperManagerEx;
    .registers 5

    .prologue
    .line 45
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    if-eqz v3, :cond_7

    .line 46
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    .line 57
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v3

    .line 50
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    :try_start_7
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 52
    .local v2, "service":Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/IWallpaperManagerEx$Stub;->asInterface(Landroid/app/IWallpaperManager;)Landroid/app/IWallpaperManagerEx;

    move-result-object v3

    sput-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_17} :catch_1a

    .line 57
    sget-object v3, Landroid/app/WallpaperManagerEx;->sService:Landroid/app/IWallpaperManagerEx;

    goto :goto_6

    .line 53
    .end local v2    # "service":Landroid/app/IWallpaperManager;
    :catch_1a
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v3, Landroid/app/WallpaperManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperManagerEx is null."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v3, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getWallpaperType()Z
    .registers 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    .local v0, "fixed":Z
    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v1

    .line 118
    .local v1, "serviceEx":Landroid/app/IWallpaperManagerEx;
    if-eqz v1, :cond_b

    .line 119
    invoke-interface {v1}, Landroid/app/IWallpaperManagerEx;->getWallpaperType()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 125
    .end local v1    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v1

    .line 77
    .local v1, "serviceEx":Landroid/app/IWallpaperManagerEx;
    if-eqz v1, :cond_1a

    .line 78
    iget v2, p0, Landroid/app/WallpaperManagerEx;->mDisplayWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1e

    iget v2, p0, Landroid/app/WallpaperManagerEx;->mDisplayHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_1e

    const/4 v0, 0x1

    .line 79
    .local v0, "fixed":Z
    :goto_17
    invoke-interface {v1, v0}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_20

    .line 84
    .end local v0    # "fixed":Z
    .end local v1    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void

    .line 78
    .restart local v1    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .end local v1    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :catch_20
    move-exception v2

    goto :goto_1a
.end method

.method public setResource(I)V
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 64
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 65
    .local v0, "serviceEx":Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_d

    .line 66
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    .line 71
    .end local v0    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public setStream(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 91
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 92
    .local v0, "serviceEx":Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_d

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    .line 98
    .end local v0    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public setWallpaperType(Z)V
    .registers 4
    .param p1, "isFixedWallpaperType"    # Z

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManagerEx;->getServiceEx()Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    .line 104
    .local v0, "serviceEx":Landroid/app/IWallpaperManagerEx;
    if-eqz v0, :cond_9

    .line 105
    invoke-interface {v0, p1}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 110
    .end local v0    # "serviceEx":Landroid/app/IWallpaperManagerEx;
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    goto :goto_9
.end method
