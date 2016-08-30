.class public Lcom/lge/app/WallpaperManagerProxy;
.super Ljava/lang/Object;
.source "WallpaperManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManagerProxy"

.field private static isFixedWallpaperMethod:Ljava/lang/Object;


# instance fields
.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    const-class v0, Landroid/app/WallpaperManager;

    const-string v1, "isFixedWallpaper"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/app/WallpaperManagerProxy;->isFixedWallpaperMethod:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/lge/app/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 24
    return-void
.end method


# virtual methods
.method public isFixedWallpaper()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/lge/app/WallpaperManagerProxy;->isFixedWallpaperMethod:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lge/app/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lge/util/ProxyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    move-result v1

    return v1

    .line 35
    :catch_12
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
