.class public Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
.super Ljava/lang/Object;
.source "DeviceStatusManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_cAPI"


# instance fields
.field private final mBinder:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;

.field private mListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;-><init>(Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;

    .line 20
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mPackageName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .line 18
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mBinder:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;

    return-object v0
.end method

.method public getListener()Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mListener:Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isInDriveMode()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isInNightMode()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isMicrophoneOn()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public setMicrophoneOpen(ZZ)Z
    .registers 4
    .param p1, "micInput"    # Z
    .param p2, "voiceInput"    # Z

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public unregister()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method
