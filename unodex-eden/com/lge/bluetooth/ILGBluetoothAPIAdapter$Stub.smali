.class public abstract Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;
.super Landroid/os/Binder;
.source "ILGBluetoothAPIAdapter.java"

# interfaces
.implements Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.ILGBluetoothAPIAdapter"

.field static final TRANSACTION_a2dpSetContentProtectionType:I = 0x1

.field static final TRANSACTION_getTrustState:I = 0x3

.field static final TRANSACTION_onProfileConnectionStateChanged:I = 0x2

.field static final TRANSACTION_setTrustState:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_a0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 44
    :sswitch_a
    const-string v5, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v7, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->a2dpSetContentProtectionType(I)Z

    move-result v4

    .line 53
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v4, :cond_23

    move v5, v6

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 59
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v5, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    .line 62
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :cond_4d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3a

    .line 79
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4f
    const-string v7, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_70

    .line 82
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 87
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_62
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->getTrustState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 88
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_6c

    move v5, v6

    :cond_6c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 85
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_70
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_62

    .line 94
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_72
    const-string v7, "com.lge.bluetooth.ILGBluetoothAPIAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9b

    .line 97
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9d

    move v1, v6

    .line 104
    .local v1, "_arg1":Z
    :goto_8c
    invoke-virtual {p0, v0, v1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->setTrustState(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    .line 105
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_96

    move v5, v6

    :cond_96
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 100
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_9b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_85

    :cond_9d
    move v1, v5

    .line 103
    goto :goto_8c

    .line 40
    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_72
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
