.class public Lcom/lge/view/SurfaceControlEx;
.super Ljava/lang/Object;
.source "SurfaceControlEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceControlEx"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static native nativeStartScreenshot(Landroid/os/IBinder;Landroid/graphics/SurfaceTexture;III)V
.end method

.method public static startScreenshot(Landroid/graphics/SurfaceTexture;I)V
    .registers 4
    .param p0, "Surface"    # Landroid/graphics/SurfaceTexture;
    .param p1, "option"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 42
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 44
    .local v0, "display":Landroid/os/IBinder;
    invoke-static {v0, p0, v1, v1, p1}, Lcom/lge/view/SurfaceControlEx;->nativeStartScreenshot(Landroid/os/IBinder;Landroid/graphics/SurfaceTexture;III)V

    .line 45
    return-void
.end method

.method public static startScreenshot(Landroid/graphics/SurfaceTexture;III)V
    .registers 6
    .param p0, "Surface"    # Landroid/graphics/SurfaceTexture;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # I

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .local v0, "display":Landroid/os/IBinder;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/lge/view/SurfaceControlEx;->nativeStartScreenshot(Landroid/os/IBinder;Landroid/graphics/SurfaceTexture;III)V

    .line 61
    return-void
.end method
