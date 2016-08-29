.class public Lcom/lge/mirrorlink/misc/WindowRotator;
.super Ljava/lang/Object;
.source "WindowRotator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_misc"


# instance fields
.field public mRotationDegree:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/mirrorlink/misc/WindowRotator;->mRotationDegree:I

    .line 15
    return-void
.end method


# virtual methods
.method public rotate()V
    .registers 5

    .prologue
    .line 21
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 22
    .local v1, "winManager":Landroid/view/IWindowManager;
    if-eqz v1, :cond_12

    .line 24
    :try_start_d
    iget v2, p0, Lcom/lge/mirrorlink/misc/WindowRotator;->mRotationDegree:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 20
    :cond_12
    :goto_12
    return-void

    .line 25
    :catch_13
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MirrorLink_misc"

    const-string/jumbo v3, "rotate error:"

    invoke-static {v2, v3, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
