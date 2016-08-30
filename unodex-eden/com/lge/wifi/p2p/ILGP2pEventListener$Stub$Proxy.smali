.class Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILGP2pEventListener.java"

# interfaces
.implements Lcom/lge/wifi/p2p/ILGP2pEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "com.lge.wifi.p2p.ILGP2pEventListener"

    return-object v0
.end method

.method public onConnectStatus(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pConnectStatus;Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V
    .registers 9
    .param p1, "peerMac"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    .param p3, "connectionInfo"    # Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    if-eqz p2, :cond_2c

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_16
    if-eqz p3, :cond_36

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    :goto_20
    iget-object v1, p0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-void

    .line 156
    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_16

    .line 167
    :catchall_31
    move-exception v1

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v1

    .line 163
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_31

    goto :goto_20
.end method

.method public onDiscoverResult(Lcom/lge/wifi/p2p/LGP2pDevice;Z)V
    .registers 8
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;
    .param p2, "isLosted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_6
    const-string v3, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    if-eqz p1, :cond_26

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/lge/wifi/p2p/LGP2pDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    :goto_15
    if-eqz p2, :cond_30

    :goto_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v1, p0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_2b

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 136
    :cond_26
    const/4 v3, 0x0

    :try_start_27
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_15

    .line 141
    :catchall_2b
    move-exception v1

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v1

    :cond_30
    move v1, v2

    .line 138
    goto :goto_17
.end method

.method public onServiceRequested(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "peerMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 122
    :catchall_1b
    move-exception v1

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw v1
.end method
