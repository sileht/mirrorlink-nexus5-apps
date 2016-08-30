.class public abstract Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "ILGBluetoothAPIAdapterCallback.java"

# interfaces
.implements Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

.field static final TRANSACTION_onBluetoothServiceDown:I = 0x2

.field static final TRANSACTION_onBluetoothServiceUp:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_30

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 45
    :sswitch_9
    const-string v2, "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v2, "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;->onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    :sswitch_23
    const-string v2, "com.lge.bluetooth.ILGBluetoothAPIAdapterCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;->onBluetoothServiceDown()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
