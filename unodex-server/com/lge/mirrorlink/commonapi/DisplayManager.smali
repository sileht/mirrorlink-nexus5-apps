.class public Lcom/lge/mirrorlink/commonapi/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/DisplayManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/IDisplayListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/DisplayManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDisplayListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IDisplayListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DisplayManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/DisplayManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/DisplayManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;

    .line 28
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mListener:Lcom/mirrorlink/android/commonapi/IDisplayListener;

    .line 26
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDisplayManager$Stub;

    return-object v0
.end method

.method public getClientPixelFormat()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayConfiguration()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IDisplayListener;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mListener:Lcom/mirrorlink/android/commonapi/IDisplayListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DisplayManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method
