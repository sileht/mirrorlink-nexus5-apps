.class public abstract Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;
.super Landroid/os/Binder;
.source "IDeviceStatusListener.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDeviceStatusListener"

.field static final TRANSACTION_onDriveModeChange:I = 0x1

.field static final TRANSACTION_onMicrophoneStatusChanged:I = 0x3

.field static final TRANSACTION_onNightModeChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_4

    .line 29
    return-object v1

    .line 31
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_4a

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :sswitch_9
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    .line 52
    :sswitch_10
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    .line 55
    .local v0, "_arg0":Z
    :goto_1d
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->onDriveModeChange(Z)V

    .line 56
    return v2

    .line 54
    .end local v0    # "_arg0":Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_1d

    .line 60
    .end local v0    # "_arg0":Z
    :sswitch_23
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    .line 63
    .restart local v0    # "_arg0":Z
    :goto_30
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->onNightModeChanged(Z)V

    .line 64
    return v2

    .line 62
    .end local v0    # "_arg0":Z
    :cond_34
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_30

    .line 68
    .end local v0    # "_arg0":Z
    :sswitch_36
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x1

    .line 71
    .restart local v0    # "_arg0":Z
    :goto_43
    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;->onMicrophoneStatusChanged(Z)V

    .line 72
    return v2

    .line 70
    .end local v0    # "_arg0":Z
    :cond_47
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_43

    .line 43
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
