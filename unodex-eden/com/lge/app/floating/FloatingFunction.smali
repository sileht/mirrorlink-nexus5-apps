.class public Lcom/lge/app/floating/FloatingFunction;
.super Ljava/lang/Object;
.source "FloatingFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/FloatingFunction$Log;
    }
.end annotation


# static fields
.field static final LogDisable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_QWINDOW:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/lge/app/floating/FloatingFunction;->LogDisable:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasNavigationBar()Z
    .registers 3

    .prologue
    .line 42
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 43
    .local v1, "wm":Landroid/view/IWindowManager;
    if-eqz v1, :cond_15

    .line 45
    :try_start_c
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    move-result v2

    .line 50
    :goto_10
    return v2

    .line 46
    :catch_11
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v2, 0x0

    goto :goto_10
.end method
