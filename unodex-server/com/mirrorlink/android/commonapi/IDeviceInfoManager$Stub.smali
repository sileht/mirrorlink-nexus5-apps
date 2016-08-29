.class public abstract Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfoManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mirrorlink.android.commonapi.IDeviceInfoManager"

.field static final TRANSACTION_getMirrorLinkClientInformation:I = 0x3

.field static final TRANSACTION_getMirrorLinkSessionVersionMajor:I = 0x1

.field static final TRANSACTION_getMirrorLinkSessionVersionMinor:I = 0x2

.field static final TRANSACTION_getServerVirtualKeyboardSupport:I = 0x4

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string/jumbo v0, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;
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
    const-string/jumbo v1, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_72

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 52
    :sswitch_a
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v3

    .line 57
    :sswitch_11
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->getMirrorLinkSessionVersionMajor()I

    move-result v0

    .line 59
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v3

    .line 65
    .end local v0    # "_result":I
    :sswitch_22
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->getMirrorLinkSessionVersionMinor()I

    move-result v0

    .line 67
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v3

    .line 73
    .end local v0    # "_result":I
    :sswitch_33
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->getMirrorLinkClientInformation()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_49

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_48
    return v3

    .line 81
    :cond_49
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48

    .line 87
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_4d
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->getServerVirtualKeyboardSupport()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v1, :cond_63

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_62
    return v3

    .line 95
    :cond_63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 101
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string/jumbo v2, "com.mirrorlink.android.commonapi.IDeviceInfoManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;->unregister()V

    .line 103
    return v3

    .line 48
    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_22
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_67
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
