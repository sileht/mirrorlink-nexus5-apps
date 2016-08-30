.class public abstract Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;
.super Landroid/os/Binder;
.source "ILGBluetoothUserBindServer.java"

# interfaces
.implements Lcom/lge/bluetooth/ILGBluetoothUserBindServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/ILGBluetoothUserBindServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.ILGBluetoothUserBindServer"

.field static final TRANSACTION_checkNapRole:I = 0x3

.field static final TRANSACTION_getTrustState:I = 0x1

.field static final TRANSACTION_setPasskey:I = 0x4

.field static final TRANSACTION_setTrustState:I = 0x2

.field static final TRANSACTION_startAlertSound:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothUserBindServer;
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
    const-string v1, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/bluetooth/ILGBluetoothUserBindServer;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothUserBindServer;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_cc

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 44
    :sswitch_a
    const-string v5, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v7, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_31

    .line 52
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->getTrustState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 58
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v4, :cond_2d

    move v5, v6

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .line 64
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_33
    const-string v7, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5b

    .line 67
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 73
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5d

    move v1, v6

    .line 74
    .local v1, "_arg1":Z
    :goto_4d
    invoke-virtual {p0, v0, v1}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->setTrustState(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    .line 75
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v4, :cond_57

    move v5, v6

    :cond_57
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_5b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_46

    :cond_5d
    move v1, v5

    .line 73
    goto :goto_4d

    .line 81
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5f
    const-string v7, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_80

    .line 84
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_72
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->checkNapRole(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 90
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_7c

    move v5, v6

    :cond_7c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_result":Z
    :cond_80
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_72

    .line 96
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_82
    const-string v7, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b3

    .line 99
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b5

    move v1, v6

    .line 107
    .restart local v1    # "_arg1":Z
    :goto_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZII)Z

    move-result v4

    .line 111
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_ae

    move v5, v6

    :cond_ae
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 102
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_b3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_95

    :cond_b5
    move v1, v5

    .line 105
    goto :goto_9c

    .line 117
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_b7
    const-string v7, "com.lge.bluetooth.ILGBluetoothUserBindServer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;->startAlertSound()Z

    move-result v4

    .line 119
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_c6

    move v5, v6

    :cond_c6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 40
    nop

    :sswitch_data_cc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_5f
        0x4 -> :sswitch_82
        0x5 -> :sswitch_b7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
