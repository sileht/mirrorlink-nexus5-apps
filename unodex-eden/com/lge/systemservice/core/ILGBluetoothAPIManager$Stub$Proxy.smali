.class Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILGBluetoothAPIManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGBluetoothAPIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    return-object v0
.end method

.method public registerAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    .registers 8
    .param p1, "callback"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 94
    iget-object v3, p0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_31

    move-result-object v2

    .line 99
    .local v2, "_result":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    return-object v2

    .line 93
    .end local v2    # "_result":Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    :cond_2f
    const/4 v3, 0x0

    goto :goto_13

    .line 98
    :catchall_31
    move-exception v3

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    throw v3
.end method

.method public unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.lge.systemservice.core.ILGBluetoothAPIManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    iget-object v2, p0, Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    return-void

    .line 110
    :cond_27
    const/4 v2, 0x0

    goto :goto_13

    .line 114
    :catchall_29
    move-exception v2

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw v2
.end method
