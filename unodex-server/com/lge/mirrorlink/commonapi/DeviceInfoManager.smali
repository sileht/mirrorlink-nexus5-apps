.class public Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
.super Ljava/lang/Object;
.source "DeviceInfoManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mListener:Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    .line 24
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mListener:Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    return-object v0
.end method

.method public getMirrorLinkClientInformation()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMirrorLinkSessionVersionMajor()I
    .registers 2

    .prologue
    .line 100
    const/4 v0, -0x1

    return v0
.end method

.method public getMirrorLinkSessionVersionMinor()I
    .registers 2

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVirtualKeyboardSupport()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method
