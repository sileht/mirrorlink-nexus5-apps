.class public abstract Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceStatusManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDeviceStatusManager"

.field static final TRANSACTION_isInDriveMode:I = 0x1

.field static final TRANSACTION_isInNightMode:I = 0x2

.field static final TRANSACTION_isMicrophoneOn:I = 0x3

.field static final TRANSACTION_setMicrophoneOpen:I = 0x4

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_4

    .line 34
    return-object v1

    .line 36
    :cond_4
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_7e

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 52
    :sswitch_a
    const-string/jumbo v3, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v4

    .line 57
    :sswitch_11
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->isInDriveMode()Z

    move-result v2

    .line 59
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v4

    .line 65
    .end local v2    # "_result":Z
    :sswitch_25
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->isInNightMode()Z

    move-result v2

    .line 67
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_35

    move v3, v4

    :cond_35
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v4

    .line 73
    .end local v2    # "_result":Z
    :sswitch_39
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->isMicrophoneOn()Z

    move-result v2

    .line 75
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_49

    move v3, v4

    :cond_49
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v4

    .line 81
    .end local v2    # "_result":Z
    :sswitch_4d
    const-string/jumbo v5, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6f

    const/4 v0, 0x1

    .line 85
    .local v0, "_arg0":Z
    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_71

    const/4 v1, 0x1

    .line 86
    .local v1, "_arg1":Z
    :goto_61
    invoke-virtual {p0, v0, v1}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->setMicrophoneOpen(ZZ)Z

    move-result v2

    .line 87
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_6b

    move v3, v4

    :cond_6b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v4

    .line 83
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_6f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_5a

    .line 85
    :cond_71
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Z
    goto :goto_61

    .line 93
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :sswitch_73
    const-string/jumbo v3, "com.mirrorlink.android.commonapi.IDeviceStatusManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;->unregister()V

    .line 95
    return v4

    .line 48
    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_73
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
