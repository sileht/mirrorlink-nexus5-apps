.class public abstract Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;
.super Landroid/os/Binder;
.source "ILGBluetoothAPIManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGBluetoothAPIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILGBluetoothAPIManager"

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_unregisterAdapter:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_46

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 46
    :sswitch_9
    const-string v2, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 47
    goto :goto_8

    .line 51
    :sswitch_10
    const-string v2, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;->registerAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;

    move-result-object v1

    .line 55
    .local v1, "_result":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v2, v3

    .line 57
    goto :goto_8

    .line 56
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2a

    .line 61
    .end local v0    # "_arg0":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .end local v1    # "_result":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    :sswitch_31
    const-string v2, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;->unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_8

    .line 42
    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
